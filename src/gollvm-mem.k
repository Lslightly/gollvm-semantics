requires "gollvm-syntax.k"
requires "gollvm-configuration.k"
requires "gollvm-dynamic-syntax.k"
requires "gollvm-dyn-insts.k"
requires "gollvm-object.k"
requires "list-helper.k"

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
    imports GOLLVM-TYPEDESCRIPTOR-SYNTAX
    imports NON-ADDR-SYNTAX
    imports LIST

    syntax Address ::=  BaseOffset
                    |   BaseMapIdx
                    |   addressValOf(LocalName) [function]
                    |   addressValOfWrapper(LocalName) [seqstrict]
                    |   deref(LocalName) [function]
                    |   toAddress(KItem) [seqstrict]
                    |   currNewAddr() [function]
                    |   useNewAddr()
    syntax KItem ::= addressValOfWrapper(LocalName) [seqstrict]
    //  base address + index list
    //  empty list mean pure address with no offset, which represents the whole object
    syntax BaseOffset ::=   baseOffset(Int, List)
                        |   pureAddr(Int) [function]
                        |   baseOffsetOf(LocalName) [function]
                        |   baseOffsetOfWrapper(LocalName)
                        |   appendOffset(BaseOffset, List) [function]
                        //  cast baseOffset(Base, IdxList) to baseOffset(Base, prefixOfList(IdxList, num of idxes))
                        |   bitcastOffset(BaseOffset, Int) [function]
                        //  trim all zeros at the end
                        |   largestStepOffset(BaseOffset) [function]
                        //  addOffset(Addr, Off)
                        //  the last element of index add Off
                        |   addOffset(BaseOffset, Int) [function]
                        /*
                            addSize(Addr, Size)
                            increase BaseOffset with Size
                            Size can be larger than sizeof(typeof(BaseOffset))
                        */
                        //  TODO check addOffset size
                        |   addSize(BaseOffset, Int) [function]
                        /*
                            input:
                                baseOffset(B, IdxList Idx)
                            output:
                                baseOffset(B, IdxList)
                        */
                        |   trimLastIdx(BaseOffset) [function]
// properties:
    syntax Int ::= remainZerosToAdd(BaseOffset) [function]
    //  the number of indexes in idxlist of BaseOffset
    syntax Int ::= numOfIdxs(BaseOffset) [function]

    //  for Base key index
    syntax BaseMapIdx ::= baseMapIdx(Int, ValueRef)

    syntax Int ::=  getBase(Address) [function]
    syntax KResult ::= BaseOffset | BaseMapIdx

    //  addrAlias(dst, src) used to addrAlias dst with src
    syntax KItem ::= addrAlias(LocalName, LocalName)
                |   addrMapInsert(LocalName, Address) [seqstrict]
    //  store(dst, srcv)
    //  store the address of srcv to dst's object
    syntax KItem ::= storeAddress(LocalName, LocalName)
    //  store(dst, nonAddr(Value))
    //  store nonAddr to dst's object
    syntax KItem ::= storeNonAddr(LocalName, NonAddr)
    syntax Bool ::= isAddr(LocalName) [function]
                |   isBaseOffsetSort(Address) [function]
                |   isPrim(LocalName) [function]

    //  lookup %local in local2prim and return the value
    syntax KItem ::= lookUpPrim(LocalName) [function]
    syntax KItem ::= updatePrim(LocalName, KItem)

    //  memmoveToHeap(Dst, Src)，将Src地址值所处的对象全部拷贝到Dst所处的对象中，并更新为Location为heap状态
    syntax KItem ::= memmoveToHeap(LocalName, LocalName)
                    /*
                        memmoveToHeap(DstAddr, SrcAddr)
                        将SrcAddr所处的对象全部拷贝到DstAddr所处的对象中
                        getBase(DstAddr) |-> searchObjAtAddr(SrcAddr)
                    */
                |   memmoveToHeapAddr(KItem, KItem) [seqstrict]


endmodule

module GOLLVM-MEM
    imports GOLLVM-MEM-SYNTAX
    imports LLVM-TYPE-DYNAMIC
    imports GOLLVM-TYPEDESCRIPTOR
    imports NON-ADDR
    imports OBJECT
    imports K-EQUAL
    imports LIST-HELPER

    rule [[ addressValOf(L:LocalName) => Addr ]]
        <local2Base>
            ... L |-> Addr ...
        </local2Base> requires isAddr(L)
    
    rule <k> addressValOfWrapper(L) => addressValOf(L) ...</k>

    rule deref(L:LocalName) => {readObjAtLocalV(L)}:>Address

    rule <k> toAddress(V:Address) => V ...</k>
    
    rule currNewAddr() => baseOffset(currBase(), .List)
    rule <k> useNewAddr() => baseOffset(Base, .List) ...</k>
        <nextId> Base:Int => Base +Int 1</nextId>

    rule pureAddr (Addr:Int) => baseOffset (Addr, .List)
    rule baseOffsetOf(L:LocalName) => {addressValOf(L)}:>BaseOffset requires isBaseOffsetSort(addressValOf(L))
    rule <k>
        baseOffsetOfWrapper(L:LocalName)
    =>
        baseOffsetOf(L)
        ... </k>

    rule appendOffset (baseOffset(Base:Int, Idx1:List), Idx2:List) => baseOffset (Base, Idx1 Idx2)
    rule bitcastOffset (baseOffset(Base:Int, Idx:List), EndIdx:Int) => baseOffset (Base, prefixOfList(Idx, EndIdx))
    rule [TlargestStepOffset]: largestStepOffset(baseOffset(Base:Int, Idx:List)) => baseOffset(Base, trimEndZeros(Idx))
    rule addOffset (Addr:BaseOffset, 0) => Addr
    rule addOffset (baseOffset(Base:Int, Idxs:List ListItem(Last) .List), Off:Int) => baseOffset (Base, Idxs ListItem(Last +Int Off)) [owise]

//  properties:
    rule remainZerosToAdd(Addr:BaseOffset) => cntDepthOf1stUnderlyingType(getTypeOfOffset(Addr))

    rule numOfIdxs(baseOffset(_:Int, IdxList:List)) => size(IdxList)

    rule getBase(baseOffset(B:Int, _:List)) => B
    rule getBase(baseMapIdx(B:Int, _:ValueRef)) => B

    rule <k> addrAlias(Dst:LocalName, Src:LocalName) => addrMapInsert(Dst, {MAP[Src]}:>Address) ...</k>
        <local2Base>
            MAP
        </local2Base>
    rule [TaddrMapInsert]: <k> addrMapInsert(Dst:LocalName, Addr:Address) => . ... </k>
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

    rule isBaseOffsetSort(_:BaseOffset) => true
    rule isBaseOffsetSort(_:Address) => false [owise]

    rule [[ lookUpPrim (V:LocalName) => Local2Prim[V] ]]
        <local2prim>
            Local2Prim
        </local2prim> requires V in_keys(Local2Prim)
    rule <k> updatePrim (L:LocalName, V:KItem) => . ...</k>
        <local2prim>
            Local2Prim => Local2Prim [L <- V]
        </local2prim>

    rule [TmemmoveToHeap]: <k> memmoveToHeap(Dst:LocalName, Src:LocalName)
    =>
        allocObjAtBase(getBase(addressValOf(Dst)), moveToHeap(searchObjAtLocalV(Src))) ...</k>

    rule [TmemmoveToHeapAddr]: <k>
        memmoveToHeapAddr(DstAddr:Address, SrcAddr:Address)
    =>
        allocObjAtBase(getBase(DstAddr), moveToHeap(searchObjAtAddr(SrcAddr)))
        ... </k>

    /*
        s = sizeof(Addr)
        if Size > s {   //  large
            addSize(nextOffset(Addr), Size - s)
        } else if Size < s {    //  small
            nextOffset(getSizeMatchOffset(Size, Addr))
        } else {    //  equal
            nextOffset(Addr)
        }
    */
    rule [TaddSizeLarge]:
        addSize(Addr:BaseOffset, Size:Int)
    =>
        addSize(
            nextOffset(Addr),
            Size -Int getSizeOfTypeOfOffset(Addr)
        )
    requires Size >Int getSizeOfTypeOfOffset(Addr)
    rule [TaddSizeSmall]:
        addSize (Addr:BaseOffset, Size:Int)
    =>
        addSize(appendOffset(Addr, ListItem(0)), Size)
    requires Size <Int getSizeOfTypeOfOffset(Addr)
    rule [TaddSizeEqual]:
        addSize (Addr:BaseOffset, Size:Int)
    =>
        nextOffset(Addr)
    requires Size ==Int getSizeOfTypeOfOffset(Addr)

    rule [TtrimLastIdx]:
        trimLastIdx(baseOffset(Base, Front:List ListItem(_) .List)) => baseOffset(Base, Front)

    
endmodule