requires "gollvm-syntax.k"
requires "gollvm-configuration.k"
requires "gollvm-dynamic-syntax.k"
requires "gollvm-dyn-insts.k"
requires "gollvm-object.k"

module GOLLVM-MEM-INCLUDE
    imports GOLLVM-SYNTAX
    imports GOLLVM-CONFIGURATION
    imports GOLLVM-DYNAMIC-SYNTAX
endmodule

/*
    非地址值相关语法和函数
*/
module NON-ADDR-SYNTAX
    imports GOLLVM-MEM-INCLUDE

    //  nonAddr for primitive type
    syntax Bool ::= isNonAddrSort(KItem) [function]
    syntax NonAddr ::= nonAddr(KItem)
    syntax KItem ::= NonAddr
    syntax KResult ::= NonAddr
    //  nonAddr(V) -> V
    syntax KItem ::= trimWrapperNonAddr(KItem) [function]
endmodule

module NON-ADDR
    imports NON-ADDR-SYNTAX

    rule isNonAddrSort(_:NonAddr) => true
    rule isNonAddrSort(_) => false [owise]

    rule trimWrapperNonAddr(nonAddr(I:KItem)) => I
    
endmodule


/*
    内存相关语法
*/
module GOLLVM-MEM-SYNTAX
    imports GOLLVM-MEM-INCLUDE
    imports LLVM-TYPE-DYNAMIC-SYNTAX
    imports NON-ADDR-SYNTAX
    imports LIST

    syntax Address ::=  BaseOffset
                    |   BaseMapIdx
                    |   addressValOf(LocalName) [function]
                    |   deref(LocalName) [function]
    //  base address + index list
    //  empty list mean pure address with no offset, which represents the whole object
    syntax BaseOffset ::=   baseOffset(Int, List)
                        |   pureAddr(Int) [function]
                        |   appendOffset(BaseOffset, List) [function]
                        //  cast baseOffset(Base, IdxList) to baseOffset(Base, prefixOfList(IdxList, num of idxes))
                        |   bitcastOffset(BaseOffset, Int) [function]
                        |   nextElemOffset(BaseOffset) [function]
                        |   largestStepOffset(BaseOffset) [function]
                        //  addOffset(Addr, Off)
                        //  the last element of index add Off
                        |   addOffset(BaseOffset, Int) [function]
    syntax Int ::= remainZerosToAdd(BaseOffset) [function]
    //  for Base key index
    syntax BaseMapIdx ::= baseMapIdx(Int, ValueRef)

    syntax Int ::=  getBase(Address) [function]
    syntax KResult ::= Address | BaseOffset | BaseMapIdx

    //  addrAlias(dst, src) used to addrAlias dst with src
    syntax KItem ::= addrAlias(LocalName, LocalName)
                |   addrMapInsert(LocalName, Address)
    //  store(dst, srcv)
    //  store the address of srcv to dst's object
    syntax KItem ::= storeAddress(LocalName, LocalName)
    //  store(dst, nonAddr(Value))
    //  store nonAddr to dst's object
    syntax KItem ::= storeNonAddr(LocalName, NonAddr)
    syntax Bool ::= isAddr(LocalName) [function]
                |   isPrim(LocalName) [function]

    //  lookup %local in local2prim and return the value
    syntax KItem ::= lookUpPrim(LocalName) [function]
    syntax KItem ::= updatePrim(LocalName, KItem)

    //  memmoveToHeap(Dst, Src)，将Src地址值所处的对象全部拷贝到Dst所处的对象中，并更新为Location为heap状态
    syntax KItem ::= memmoveToHeap(LocalName, LocalName)


endmodule

module GOLLVM-MEM
    imports GOLLVM-MEM-SYNTAX
    imports LLVM-TYPE-DYNAMIC
    imports NON-ADDR
    imports OBJECT
    imports K-EQUAL

    rule pureAddr (Addr:Int) => baseOffset (Addr, .List)

    rule appendOffset (baseOffset(Base:Int, Idx1:List), Idx2:List) => baseOffset (Base, Idx1 Idx2)
    rule bitcastOffset (baseOffset(Base:Int, Idx:List), EndIdx:Int) => baseOffset (Base, prefixOfList(Idx, EndIdx))
    // rule nextElemOffset(baseOffset(Base:Int, Idx:List)) => /*TODO*/
    rule largestStepOffset(baseOffset(Base:Int, Idx:List)) => baseOffset(Base, trimEndZeros(Idx))
    rule addOffset (Addr:BaseOffset, 0) => Addr
    rule addOffset (baseOffset(Base:Int, Idxs:List ListItem(Last) .List), Off:Int) => baseOffset (Base, Idxs ListItem(Last +Int Off)) [owise]

    rule remainZerosToAdd(Addr:BaseOffset) => cntDepthOf1stUnderlyingType(getTypeOfOffset(Addr))

    rule getBase(baseOffset(B:Int, _:List)) => B
    rule getBase(baseMapIdx(B:Int, _:ValueRef)) => B

    rule <k> addrAlias(Dst:LocalName, Src:LocalName) => addrMapInsert(Dst, {MAP[Src]}:>Address) ...</k>
        <local2Base>
            MAP
        </local2Base>
    rule <k> addrMapInsert(Dst:LocalName, Addr:Address) => . ... </k>
        <local2Base>
            MAP => MAP [Dst <- Addr]
        </local2Base>
    

    rule [TvalidStoreAddress]:<k> storeAddress (Dst:LocalName, Src:LocalName) => updateObjAtAddr (addressValOf(Dst), addressValOf(Src)) ...</k>
        requires notBool (inHeap(searchObjAtLocalV(Dst)) andBool notBool inHeap(searchObjAtLocalV (Src)))
    rule <k> storeAddress (Dst:LocalName, Src:LocalName) => updateObjAtAddr(addressValOf(Dst), addressValOf(Src)) ...</k>
        <currInst> CurrInst </currInst>
        <errors>... .List => ListItem(heap2stack(Dst, Src, CurrInst))</errors>
        [owise]
    
    rule <k> storeNonAddr (L:LocalName, Non:NonAddr) => updateObjAtAddr(addressValOf (L), Non) ...</k>
    

    rule [[ isAddr(L:LocalName) => L in_keys(Local2Base) ]]
        <local2Base>
            Local2Base
        </local2Base>
    
    rule [[ isPrim(L:LocalName) => L in_keys(Local2Prim)]]
        <local2prim>
            Local2Prim
        </local2prim>


    rule [[ addressValOf(L:LocalName) => Addr ]]
        <local2Base>
            ... L |-> Addr ...
        </local2Base> requires isAddr(L)

    rule deref(L:LocalName) => {readObjAtLocalV(L)}:>Address
    
    rule [[ lookUpPrim (V:LocalName) => Local2Prim[V] ]]
        <local2prim>
            Local2Prim
        </local2prim> requires V in_keys(Local2Prim)
    rule <k> updatePrim (L:LocalName, V:KItem) => . ...</k>
        <local2prim>
            Local2Prim => Local2Prim [L <- V]
        </local2prim>

    rule <k> memmoveToHeap (Dst:LocalName, Src:LocalName)
    =>
        allocObjAtBase(getBase(addressValOf(Dst)), moveToHeap(searchObjAtLocalV(Src))) ...</k>

    
endmodule