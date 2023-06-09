requires "gollvm-syntax.k"
requires "gollvm-configuration.k"
requires "gollvm-dynamic-syntax.k"
requires "gollvm-dyn-insts.k"
requires "gollvm-object.k"
requires "list-helper.k"
requires "constant.k"

module GOLLVM-MEM-INCLUDE
    imports GOLLVM-SYNTAX
    imports GOLLVM-CONFIGURATION
    imports GOLLVM-DYNAMIC-SYNTAX
endmodule

/*
    非地址值相关语法和函数
*/
module NON-ADDR-SYNTAX
    imports CONSTANT-SYNTAX
    imports GOLLVM-MEM-INCLUDE

    //  nonAddr for primitive type
    syntax Bool ::= isNonAddrSort(KItem) [function]
    syntax NonAddr ::= nonAddr(KItem)
    syntax KItem ::= NonAddr
    syntax KResult ::= NonAddr
    //  nonAddr(V) -> V
    syntax KItem ::= trimWrapperPrim(KItem) [function]
endmodule

module NON-ADDR
    imports CONSTANT
    imports NON-ADDR-SYNTAX
    imports GOLLVM-MEM-SYNTAX

    rule isNonAddrSort(_:Address) => false
    rule isNonAddrSort(Cast:ConstExpr) => false
        requires notBool isDefineFunction (extractGlobalName(Cast)) andBool notBool isTypeDescriptor(Cast)
    rule isNonAddrSort(_) => true [owise]

    rule trimWrapperPrim(nonAddr(I:KItem)) => I
    rule trimWrapperPrim(Cast:ConstExpr) => extractGlobalName(Cast) requires isDefineFunction (extractGlobalName(Cast))
    // TODO 确定是否真的要把类型描述符统一为使用全局变量？
    rule trimWrapperPrim(Cast:ConstExpr) => extractGlobalName(Cast) requires isTypeDescriptor(Cast)
    rule trimWrapperPrim(S:KItem) => S [owise]
    
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
                    |   addressValOfGlobalV(GlobalName) [function]
                    |   addressValOfWrapper(LocalName) [seqstrict]
                    |   deref(LocalName) [function]
                    |   toAddress(KItem) [seqstrict]
                    //  获得当前新地址Base
                    |   currNewAddr() [function]
                    //  获取刚分配的地址，用于在新分配地址useNewAddr()之后获取这个地址
                    |   lastAddr() [function]
                    //  获得当前新地址Address并将nextId+1
                    |   useNewAddr()
    syntax KItem ::= addressValOfWrapper(LocalName) [seqstrict]
    //  base address + index list
    //  empty list mean pure address with no offset, which represents the whole object
    syntax BaseOffset ::=   baseOffset(Int, List)
                        |   "nil"
                        |   pureAddr(Int) [function]
                        |   baseOffsetOf(LocalName) [function]
                        |   baseOffsetOfGlobalV(GlobalName) [function]
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
                    //  局部寄存器添加地址
                |   addrMapInsert(LocalName, Address) [seqstrict]
                    //  全局寄存器添加地址
                |   globalAddrMapInsert(GlobalName, Address) [seqstrict]
    //  store(dst, dstType, srcv)
    //  store the address of srcv to dst's address according to dstType
    syntax KItem ::= storeAddress(LocalName, Type, LocalName)
    //  store(dst, dstType, nonAddr(Value))
    //  store nonAddr to dst's address according to dstType
    syntax KItem ::= storeNonAddr(LocalName, Type, NonAddr)
    syntax Bool ::= isAddr(LocalName) [function]
                |   isBaseOffsetSort(Address) [function]
                |   isPrim(LocalName) [function]
                |   isNil(ValueRef) [function]

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

                    //  (当前指令, 目标地址，被存储的内容)
    syntax Error ::= longLifeGetShorterLifeAddr(MergedInstruction, Address, Content)
            | heapToStack(MergedInstruction, Address, Content)
            | retStackAddr(MergedInstruction, Address)
            //  根据生命期以及分配位置区分不同的错误
            | errorClassify(MergedInstruction, Address, Content) [function]

endmodule

module GOLLVM-MEM
    imports GOLLVM-MEM-SYNTAX
    imports LLVM-TYPE-DYNAMIC
    imports NON-ADDR
    imports OBJECT
    imports K-EQUAL
    imports LIST-HELPER

    rule [[ addressValOf(L:LocalName) => Addr ]]
        <local2Base>
            ... L |-> Addr ...
        </local2Base> requires isAddr(L)
    
    rule [[ addressValOfGlobalV (GV:GlobalName) => Addr ]]
        <globalRegisters>
            ... GV |-> Addr ...
        </globalRegisters>
    
    rule <k> addressValOfWrapper(L) => addressValOf(L) ...</k>

    rule deref(L:LocalName) => {readObjAtLocalV(L)}:>Address

    rule <k> toAddress(V:Address) => V ...</k>
    
    rule currNewAddr() => baseOffset(currBase(), .List)
    rule lastAddr() => baseOffset(currBase() -Int 1, .List)
    rule <k> useNewAddr() => baseOffset(Base, .List) ...</k>
        <nextId> Base:Int => Base +Int 1</nextId>

    rule pureAddr (Addr:Int) => baseOffset (Addr, .List)
    rule baseOffsetOf(L:LocalName) => {addressValOf(L)}:>BaseOffset requires isBaseOffsetSort(addressValOf(L))
    rule baseOffsetOfGlobalV (GV:GlobalName) => {addressValOfGlobalV (GV)}:>BaseOffset requires isBaseOffsetSort(addressValOfGlobalV (GV))
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
    rule [TglobalAddrMapInsert]: <k>
        globalAddrMapInsert (Dst:GlobalName, Addr:Address)
    =>
        .
    ... </k>
        <globalRegisters>
            MAP => MAP [Dst <- Addr]
        </globalRegisters>
    

    rule [TvalidStoreAddress]:<k>
        storeAddress (Dst:LocalName, DstType:Type, Src:LocalName)
    =>
        updateObjAtAddr(getTypeMatchedBaseOffset(DstType, baseOffsetOf(Dst)), addressValOf(Src))
    ...</k>
    
    rule <k>
        storeNonAddr (L:LocalName, VType:Type, Non:NonAddr)
    =>
        updateObjAtAddr(
            getTypeMatchedBaseOffset(
                VType, baseOffsetOf(L)
            ),
            Non
        )
        ...</k>
    

    rule [[ isAddr(L:LocalName) => L in_keys(Local2Base) ]]
        <local2Base>
            Local2Base
        </local2Base>
    
    rule [[ isPrim(L:LocalName) => L in_keys(Local2Prim)]]
        <local2prim>
            Local2Prim
        </local2prim>

    rule isNil(null) => true
    rule isNil(_:ValueRef) => false [owise]
    rule isNil(L:LocalName) => baseOffsetOf(L) ==K nil

    rule isBaseOffsetSort(_:BaseOffset) => true
    rule isBaseOffsetSort(_:Address) => false [owise]

    rule [[ lookUpPrim (V:LocalName) => Local2Prim[V] ]]
        <local2prim>
            Local2Prim
        </local2prim> requires V in_keys(Local2Prim)
    rule <k> updatePrim (L:LocalName, V:KItem) => . ...</k>
        <local2prim>
            Local2Prim => Local2Prim [L <- trimWrapperPrim(V)]
        </local2prim>

    rule [TmemmoveToHeap]: <k> memmoveToHeap(Dst:LocalName, Src:LocalName)
    =>
        allocObjAtBase(getBase(addressValOf(Dst)), moveToHeap(searchObjAtLocalV(Src))) ~> selfCheckLifeTime(addressValOf(Dst)) ...</k>

    rule [TmemmoveToHeapAddr]: <k>
        memmoveToHeapAddr(DstAddr:Address, SrcAddr:Address)
    =>
        allocObjAtBase(getBase(DstAddr), moveToHeap(searchObjAtAddr(SrcAddr))) ~> selfCheckLifeTime(DstAddr)
        ... </k>

    /*
        s = sizeof(Addr)
        if Size > s {   //  large
            addSize(nextOffset(Addr), Size - s)
        } else if Size < s {    //  small
            if Size == 0 {
                Addr
            } else {
                nextOffset(getSizeMatchOffset(Size, Addr))
            }
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
    rule [TaddSizeZero]:
        addSize (Addr:BaseOffset, 0) => Addr
        [priority(49)]
    rule [TaddSizeEqual]:
        addSize (Addr:BaseOffset, Size:Int)
    =>
        nextOffset(Addr)
    requires Size ==Int getSizeOfTypeOfOffset(Addr)

    rule [TtrimLastIdx]:
        trimLastIdx(baseOffset(Base, Front:List ListItem(_) .List)) => baseOffset(Base, Front)

    rule [TerrorClassifyHeapToStack]:
        errorClassify(I:MergedInstruction, Addr:Address, C:Content)
    =>
        heapToStack (I, Addr, C)
    requires isHeapLoc(getObjLoc(searchObjAtAddr(Addr)))

    rule [TerrorClassifyLongerGetShorter]:
        errorClassify(I:MergedInstruction, Addr:Address, C:Content)
    =>
        longLifeGetShorterLifeAddr (I, Addr, C)
    [owise]

    
endmodule