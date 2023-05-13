requires "gollvm-mem.k"
/*
    对象object相关语法和函数
*/
module OBJECT-SYNTAX
    imports GOLLVM-MEM-SYNTAX
    imports GOLLVM-MEM-INCLUDE

    // header(ObjectType) is a List that contains the pointer to the underlying structure
    syntax ObjectType ::= Type
                        | "unknown" 
                        | MapType
                        | header(ObjectType) 
    syntax MapType ::= "map" "[" ObjectType "]" ObjectType
    syntax Location ::= "heap" | "stack" | "const" | "static"
                |   getObjLoc(Object) [function]
    syntax Bool ::= isHeapLoc(Location) [function]
                |   isStackLoc(Location) [function]
                |   isConstLoc(Location) [function]
                |   isStaticLoc(Location) [function]
    
    //  object(TypeDescriptor, SizeConst, Content, Map[Key]AddressOf(Value), WhetherInStack, LifeTime)
    //  values in List/Map are lazily refreshed.
    //  Content is the content of object, whose size is constant.
    //  Map is ValueRef to Address map, i.e. key/value address map
    //  `SizeConst == true` means num of elements in object is known. We should check ListOfValues. MapOfValues is .Map
    //  `SizeConst == false` means num of elements in object is not constant. We should check MapOfValues. ListOfValues is .List
    //  LifeTime is Int currently. heap/const is zero, stack object's is marked by lifeTime cell which will increase/decrease with call/ret
    syntax Content ::= NonAddr | Address | List | UnInit | ValueRef
                |   getObjContent(Object) [function]
    syntax KItem ::= Content
    syntax KResult ::= List
    syntax LifeTime ::= Int
                    | currLifeTime() [function]
                    /*
                        longer(lhs, rhs)
                        return whether lifeTime of lhs is longer with rhs, i.e. lhs < rhs
                    */
    syntax Bool ::= longer(LifeTime, LifeTime) [function]
                    /*
                        longerInObjLife(lhs_obj, rhs_obj)
                    */
                    |   longerInObjLife(Object, Object) [function]
                    /*
                        longerRecursiveCheck(DstLocation, DstLifeTime, Content)
                        recursive check whether objects pointers point to in content have shorter life than DstLocation and DstLifeTime
                    */
                    |   longerLifeRecursiveCheck(Location, LifeTime, Content) [function]
    syntax KItem ::= checkReturnLifeTime(BaseOffset)
                    //  检查对象内容中的地址满足不变式约束，即需要知道对象的地址和生命期
                    //  注意object需要为修改后的object，function可能返回之前的object
    syntax KItem ::= selfCheckLifeTime(Address)
    syntax Object ::= object(ObjectType, Bool, Content, Map, Location, LifeTime)

// create/search:
                    | createObjWithSuitableLifeTime(ObjectType, Bool, Content, Map, Location) [function]
                    | createObjList(ObjectType, Location) [function]
                    | createObjMap(ObjectType, Location) [function]
                    | searchObjAtBase(Int) [function]
                    | searchObjAtAddr(Address) [function]
                    | searchObjAtLocalV(LocalName) [function]
                    | searchObjAtGlobalV(GlobalName) [function]
                    | moveToHeap(Object) [function]
                    //  replaceType(OldObj, NewType)
                    | replaceType(Object, ObjectType) [function]

// properties:
    syntax Bool ::= inHeap(Object) [function]
                |   isSizeConst(Object) [function]
                //  是否位置是常量
                |   isConstObj(Object) [function]
    syntax Type ::= getObjType(Object) [function]
    syntax LifeTime ::= getObjLifeTime(Object) [function]
    syntax KResult ::= Int
    syntax KResult ::= Object
    //  isValidBaseMapIdxCtor(Key, Addr)
    //  Addr |-> object(..., Map ...)
    //  return Key in_keys(Map)
    syntax Bool ::= isValidBaseMapIdxCtor(BaseMapIdx) [function]
    /*
        judge whether the input address is the valid address based on the type of Object at the base of addr
    */
    syntax Bool ::= isValidBaseOffset(BaseOffset) [function]
    /*
        if content is 
            { { i64*, i1 }, i64, i64 }
        the number of indexs to visit type of i64* is 2, i.e. 0, 0
    */
    syntax Int ::= cntNumIdxToType(Content, Type) [function]
    /*  getTypeOfOffset(baseOffset)
        return the type matched on baseOffset
    */
    syntax Type ::= getTypeOfOffset(BaseOffset) [function]
    //  return the size of getTypeOffset
    syntax Int ::= getSizeOfTypeOfOffset(BaseOffset) [function]
    /*
        getTypeMatchedBaseOffset(ToBeMatchedType, OriginAddr)
        every baseoffset has its type. this function return the most type matched BaseOffset from OriginAddr, i.e. minimized step BaseOffset
    */
    syntax BaseOffset ::= getTypeMatchedBaseOffset(Type, BaseOffset) [function]
    /*
        return the next BaseOffset based on the step of input addr.
        if the addr is the last element of the parent structure, then the next offset will be the next element of the parent structure recursively.
    */
    syntax BaseOffset ::= nextOffset(BaseOffset) [function]

// read:
    //  readObjMap(baseMapIdx(Addr, Key))
    //  Addr |-> object(..., Map ...)
    //  return Map[Key]
    syntax Address ::= readObjMap(BaseMapIdx) [function]
    //  obj/localname idx list
    syntax Content ::=  readObjList(BaseOffset) [function]
                    |   readContentAtAddr(Address) [function]
                    |   readObjAtLocalV(LocalName) [function]
                    |   readObjAtGlobalV(GlobalName) [function]
                    /*
                        readObjAtLocalVWithIdxList(V, Idxs)
                        V's address must be baseoffset
                    */
                    |   readObjAtLocalVWithIdxList(LocalName, Ints) [function]
                    |   readObjAtGlobalVWithIdxList(GlobalName, Ints) [function]
                    //  lazy evaluated
                    |   getContentElemMultiDim(Content, List) [function]
    //  包装readObjAtLocalVWithIdxList函数，防止Content是KResult不进行计算
    syntax KItem ::= readObjAtLocalVWithIdxListWrapper(LocalName, Ints) [seqstrict]

// update:
    //  ((Addr, IdxList), NewVal)
    //  Addr |-> Object(List[IdxList] <- NewVal)
    syntax KItem ::= updateObjList(BaseOffset, Content) [seqstrict]
    //  updateObjeListAtLocalV(V, IdxList, NewVal)
    //  V's Address must be BaseOffset. 
    //  Assuming the address is baseOffset(Base, Off), this ctor will do updateObjList(baseOffset(Base, Off IdxList), NewVal)
    syntax KItem ::= updateObjListAtLocalV(LocalName, Ints, KItem) [seqstrict]
    //  updateObjMap((Addr, Key), AddressOfValue)
    //  Addr |-> Object.Map[Key] = AddressOfValue
    syntax KItem ::= updateObjMap(BaseMapIdx, Address) [seqstrict]
    syntax KItem ::= updateObjAtAddr(Address, Content) [seqstrict]
    //  updateRefInMap(baseMapIdx(ContainerAddr, Key), Containee) ContainerAddr's object's Map updates the data of Key to Containee's address
    syntax KItem ::= updateRefInMap(BaseMapIdx, LocalName)
                    //  (obj, index list, newval)
    syntax Object ::= updateListOfObject(Object, List, Content) [function]
                    | updateMapOfObject(Object, ValueRef, Address) [function]
    syntax Content ::= updateContentMultiDim(Content, List, Content) [function]

    /*
        getSizeMatchedOffset(Size, OriginBaseOffset)
            return the BaseOffset whose type's size is equal to
        Size, generated by OriginBaseOffset
            this function will invoke appendOffsetToMatchSize 
        or trimEndZerosToMatchSize recursively to avoid jump 
        between append and trim zeros if there is no size 
        matching this addr actually.
            For example, for size 28, the address will jump 
        between size 8 (baseOffset(A, 0 1 0)) and size 32 
        (baseOffset(A, 0 1)) if the getSizeMatchedOffset function 
        is a recursive function who can append and trim zeros.
            always invoke this function if whether to append
        or trim is not decided
    */
    syntax Bool ::= canOffsetMatchSize(Int, BaseOffset, Int) [function]
    syntax BaseOffset ::= getSizeMatchedOffset(Int, BaseOffset) [function]
                        //  always append zeros
                        | appendOffsetToMatchSize(Int, BaseOffset) [function]
                        //  always trim zeros at the end
                        | trimEndZerosToMatchSize(Int, BaseOffset) [function]
                // minLargestStepOffsetTypeSize(Addr1, Addr2)
    syntax Int ::= minLargestStepOffsetTypeSize(BaseOffset, BaseOffset) [function]

                    //  updateObjType(Base, ObjectType)
    syntax KItem ::= updateObjTypeAtBase(Int, KItem) [seqstrict]
                |    updateObjType(KItem, KItem) [seqstrict]
                |   updateObjTypeAtLocalV(LocalName, KItem) [seqstrict]

    /*
        copy(dstptr, srcptr, size), volatile is ignored
    */
    syntax KItem ::= copy(BaseOffset, BaseOffset, Int)
                /* docopy(dstptr, srcptr) will copy the content under srcptr to dstptr immediately */
                |   docopy(BaseOffset, BaseOffset)

//-------------------mem

//create:
    //  allocObjAtBase(Base, Object)
    syntax KItem ::= allocObjAtBase(Int, Object)
    //  allocObjAtBase at current Base and increase Base. return the Object's Base
    syntax Address ::= allocObj(Object) [strict]
                    //  allocUnknownObj(Location) BaseOffset
                    |  allocUnknownObj(Location)
                    //  allocArray(ElemType, Size, Location) BaseOffset
                    |  allocArray(ObjectType, Int, Location) [strict(2)]
endmodule

module OBJECT
    imports OBJECT-SYNTAX
    imports GOLLVM-MEM-SYNTAX
    imports K-EQUAL

    rule getObjLoc (object (_:ObjectType, _:Bool, _:Content, _:Map, Loc:Location, _:LifeTime)) => Loc
    rule isHeapLoc (heap) => true
    rule isHeapLoc (_:Location) => false [owise]
    rule isStackLoc (stack) => true
    rule isStackLoc (_:Location) => false [owise]
    rule isConstLoc (const) => true
    rule isConstLoc (_:Location) => false [owise]
    rule isStaticLoc (static) => true
    rule isStaticLoc (_:Location) => false [owise]

// LifeTime
    rule [[ currLifeTime() => Time ]]
    <lifeTime> Time:Int </lifeTime>
    rule longer (LHS:Int, RHS:Int) => LHS <Int RHS
    rule longerInObjLife(LHS:Object, RHS:Object) => longer(getObjLifeTime(LHS), getObjLifeTime(RHS))
    /*
        Content可能包含
            Address
            nonAddr(KItem)内部可能包含
            List
            ValueRef
                LocalName不可能
                GlobalName不可能
                ConstExpr
                    //TODO
                    bitcast有可能，先不考虑
    */
    rule [TlongerLifeRecursiveCheckAddress]:
        longerLifeRecursiveCheck(_:Location, DstLife:LifeTime, Addr:Address)
    =>
        longer(DstLife, getObjLifeTime(searchObjAtAddr(Addr)))

    rule [TlongerLifeRecursiveCheckNonAddr]:
        longerLifeRecursiveCheck (DstLoc:Location, DstLife:LifeTime, NAddr:NonAddr)
    =>
        longerLifeRecursiveCheck(DstLoc, DstLife, {trimWrapperPrim(NAddr)}:>Content)

    rule [TlongerLifeRecursiveCheckEmptyList]:
        longerLifeRecursiveCheck(_:Location, _:LifeTime, .List) => false

    rule [TlongerLifeRecursiveCheckList]:
        longerLifeRecursiveCheck(DstLoc:Location, DstLife:LifeTime, ListItem(I:Content) Remains:List)
    =>
            longerLifeRecursiveCheck(DstLoc, DstLife, I) 
        orElseBool
            longerLifeRecursiveCheck(DstLoc, DstLife, Remains)

    rule longerLifeRecursiveCheck(_:Location, _:LifeTime, uninit) => false

    rule [TlongerLifeRecursiveCheckValueRef]:
        longerLifeRecursiveCheck(_:Location, _:LifeTime, _:ValueRef) => false

    
    // 返回地址只有生命期比当前栈的生命期更长才被允许
    rule <k>
        checkReturnLifeTime(Addr:BaseOffset)
    =>
        .
    ... </k> requires longer(getObjLifeTime(searchObjAtAddr(Addr)), currLifeTime())

    rule <k>
        checkReturnLifeTime(Addr:BaseOffset)
    =>
        stuck()
    ... </k>
        <errors> ... .List => ListItem(retStackAddr(getCurrInst (), Addr)) </errors>
    [owise]

    rule <k>
        selfCheckLifeTime(Addr:Address)
    =>
        .
    ... </k>
        <errors> ... .List => ListItem(longLifeGetShorterLifeAddr(getCurrInst(), Addr, getObjContent (searchObjAtAddr (Addr)))) </errors>
        requires longerLifeRecursiveCheck(
            getObjLoc (searchObjAtAddr (Addr)),
            getObjLifeTime (searchObjAtAddr (Addr)),
            getObjContent (searchObjAtAddr (Addr))
        )
    rule <k>
        selfCheckLifeTime (_:Address) => .
    ... </k> [owise]


// Object
// create/search:-------------------------------
    rule
        createObjWithSuitableLifeTime(ObjTy:ObjectType, SizeConst:Bool, C:Content, M:Map, heap)
    =>
        object (ObjTy, SizeConst, C, M, heap, 0)
    rule
        createObjWithSuitableLifeTime(ObjTy:ObjectType, SizeConst:Bool, C:Content, M:Map, const)
    =>
        object (ObjTy, SizeConst, C, M, const, 0)
    rule
        createObjWithSuitableLifeTime(ObjTy:ObjectType, SizeConst:Bool, C:Content, M:Map, static)
    =>
        object (ObjTy, SizeConst, C, M, static, 0)
    rule
    [[
        createObjWithSuitableLifeTime(ObjTy:ObjectType, SizeConst:Bool, C:Content, M:Map, stack)
    =>
        object (ObjTy, SizeConst, C, M, stack, Life)
    ]]
    <lifeTime> Life:Int </lifeTime>
    rule createObjList(ObjTy:Type, Loc) => createObjWithSuitableLifeTime(ObjTy, true, initOfType(ObjTy), .Map, Loc)
    rule createObjList(ObjTy, Loc) => createObjWithSuitableLifeTime(ObjTy, true, uninit, .Map, Loc) [owise]

    rule createObjMap(ObjTy, Loc) => createObjWithSuitableLifeTime (ObjTy, false, .List, .Map, Loc)

    rule [[ searchObjAtBase(Addr:Int) => Obj ]]
        <mem>
            ... Addr |-> Obj ...
        </mem>
    rule searchObjAtAddr (baseOffset (Base:Int, _:List)) => searchObjAtBase (Base)
    rule searchObjAtAddr (baseMapIdx (Base:Int, _:ValueRef)) => searchObjAtBase (Base)
    rule searchObjAtLocalV (L:LocalName) => searchObjAtAddr(addressValOf(L))
    rule searchObjAtGlobalV(GV:GlobalName) => searchObjAtAddr(addressValOfGlobalV(GV))
    rule moveToHeap (object(Ty, SizeConst, C, M, _:Location, _:LifeTime)) => object(Ty, SizeConst, C, M, heap, 0)
    rule replaceType(object(_:ObjectType, SizeConst, C, M, Loc, Life:LifeTime), NewType:ObjectType) => object(NewType, SizeConst, C, M, Loc, Life)

// properties:---------------------------------
    rule getObjContent (object (_:ObjectType, _:Bool, C:Content, _:Map, _:Location, _:LifeTime)) => C
    rule inHeap(object(_:ObjectType, _:Bool, _:Content, _:Map, Loc:Location, _:LifeTime)) => isHeapLoc(Loc)

    rule isSizeConst(object(_:ObjectType, SizeConst:Bool, _:Content, _:Map, _:Location, _:LifeTime)) => SizeConst

    rule isConstObj(object(_:ObjectType, _:Bool, _:Content, _:Map, L:Location, _:LifeTime)) => isConstLoc (L)

    rule getObjType(object(ObjTy:ObjectType, _:Bool, _:Content, _:Map, _:Location, _:LifeTime)) => {ObjTy}:>Type requires isTypeSort(ObjTy)

    rule getObjLifeTime (object (_:ObjectType, _:Bool, _:Content, _:Map, _:Location, Life:LifeTime)) => Life

    rule [[ isValidBaseMapIdxCtor(baseMapIdx (Addr:Int, Key:ValueRef)) => Key in_keys(M) ]]
        <mem>
            ...
            Addr |-> object (_:ObjectType, _:Bool, _:List, M:Map, _:Location, _:LifeTime)
            ...
        </mem>
    
    rule isValidBaseOffset(baseOffset(Base:Int, IdxList:List)) => isValidTypeIdx (getObjType(searchObjAtBase(Base)), IdxList)
    
    rule cntNumIdxToType(uninit, _:Type) => 0
    rule cntNumIdxToType(C:List, T:Type) => cnt1stItemDim(C) -Int cntDepthOf1stUnderlyingType(T)

    rule [TgetTypeOfOffset]: getTypeOfOffset(baseOffset (Base:Int, IdxList)) => subType(getObjType (searchObjAtBase(Base)), IdxList)
    rule getSizeOfTypeOfOffset(Addr:BaseOffset) => SizeOfType(getTypeOfOffset(Addr))

    rule getTypeMatchedBaseOffset(Ty:Type, OriginBaseOffset:BaseOffset)
    =>
        getSizeMatchedOffset(
            SizeOfType(Ty),
            OriginBaseOffset
        )
    
    rule [TnextOffset]:
        nextOffset(Addr:BaseOffset)
    =>
        #if isValidBaseOffset(addOffset(Addr, 1))
        #then
            addOffset(Addr, 1)
        #else
            nextOffset(trimLastIdx(Addr))
        #fi

// read:--------------------------------------
    rule [TreadObjMap]: [[ readObjMap(baseMapIdx (Addr:Int, Key:ValueRef)) => {M [ Key ]}:>Address ]]
        <mem>
            ...
            Addr |-> object(_:ObjectType, _:Bool, _:Content, M:Map, _:Location, _:LifeTime)
            ...
        </mem> requires Key in_keys(M)
    rule [TreadObjList]: [[ readObjList(baseOffset (Base:Int, IdxList:List)) => getContentElemMultiDim(Cont, IdxList:List) ]]
        <mem>
            ... Base |-> object (_:ObjectType, _:Bool, Cont, _:Map, _:Location, _:LifeTime) ...
        </mem>
    rule readContentAtAddr (Addr:BaseOffset) => readObjList (Addr)
    rule readContentAtAddr (Addr:BaseMapIdx) => readObjMap (Addr)

    rule [TreadObjAtLocalV]: readObjAtLocalV(L:LocalName) => readContentAtAddr(addressValOf(L))
    rule [TreadObjAtGlobalV]: readObjAtGlobalV(GV:GlobalName) => readContentAtAddr(addressValOfGlobalV(GV))
    rule [TreadObjAtLocalVWithIdxList]: readObjAtLocalVWithIdxList(L:LocalName, Idxs:Ints) => readContentAtAddr(appendOffset({addressValOf(L)}:>BaseOffset, createIdxList(Idxs)))
    rule [TreadObjAtGlobalVWithIdxList]: readObjAtGlobalVWithIdxList(GV:GlobalName, Idxs:Ints) => readContentAtAddr(appendOffset({addressValOfGlobalV(GV)}:>BaseOffset, createIdxList(Idxs)))
    rule [TreadObjAtLocalVWithIdxListWrapper]:
    <k>
        readObjAtLocalVWithIdxListWrapper(L:LocalName, Idxs:Ints) => readObjAtLocalVWithIdxList(L, Idxs) ...
    </k>

    rule [TgetContentElemMultiDimOneIdx]: getContentElemMultiDim (Src:List, ListItem(I:Int) .List) => {Src[I]}:>Content [priority(50)]
    rule [TgetContentElemMultiDimMultiIdx]:getContentElemMultiDim (Src:List, ListItem(I:Int) Remains:List) => getContentElemMultiDim({Src[I]}:>List, Remains) [priority(51)]
    rule [TgetContentElemMultiDimEmptyIdx]:getContentElemMultiDim(L:Content, .List) => L
    

// update:-----------------------------------
    rule updateListOfObject(object(T:ObjectType, Const:Bool, L:Content, M:Map, Loc:Location, Life:LifeTime), IdxList:List, NewVal:Content) => object(T, Const, updateContentMultiDim(L, IdxList, NewVal), M, Loc, Life)

    rule updateMapOfObject (object(T:ObjectType, Const:Bool, L:Content, M:Map, Loc:Location, Life:LifeTime), Key:ValueRef, NewVal:Address) => object(T, Const, L, M [Key <- NewVal], Loc, Life:LifeTime)

    rule <k> updateObjList (baseOffset(Base, IdxList:List), NewVal:Content) => . ...  </k>
        <mem>
            Mem => Mem [ Base <- updateListOfObject (searchObjAtBase(Base), IdxList, NewVal)]
        </mem> [priority(51)]

    //  TODO 嵌套结构中可能包含地址值
    rule <k>
        updateObjList(baseOffset(Base:Int, IdxList:List) #as Dst, NewVal:Content) => .
    ... </k>
        <mem>
            Mem => Mem [ Base <- updateListOfObject (searchObjAtBase(Base), IdxList, NewVal) ]
        </mem>
        <errors> ... .List => ListItem(longLifeGetShorterLifeAddr(getCurrInst(), Dst, NewVal)) </errors>
        requires longerLifeRecursiveCheck(
            getObjLoc(searchObjAtBase(Base)),
            getObjLifeTime(searchObjAtBase(Base)),
            NewVal
        )
    
    
    rule <k> updateObjMap (baseMapIdx (Base:Int, Key:ValueRef), ValPtr:Address) => . ... </k>
        <mem>
            Mem => Mem [ Base <- updateMapOfObject(searchObjAtBase (Base), Key, ValPtr) ]
        </mem>
        [priority(51)]
    rule <k> updateObjMap (baseMapIdx (Base:Int, Key:ValueRef) #as Dst, ValPtr:Address) => . ... </k>
        <mem>
            Mem => Mem [ Base <- updateMapOfObject(searchObjAtBase (Base), Key, ValPtr) ]
        </mem>
        <errors> ... .List => ListItem(longLifeGetShorterLifeAddr(getCurrInst(), Dst, ValPtr)) </errors>
        requires longerInObjLife(searchObjAtBase(Base), searchObjAtAddr(ValPtr))
    rule [TupdateObjListAtLocalV]: <k> updateObjListAtLocalV(V:LocalName, Idxs:Ints, NewVal:KItem)
    => 
        updateObjList(appendOffset(baseOffsetOf(V), createIdxList(Idxs)), nonAddr(NewVal))
        ... </k>
        requires isBaseOffsetSort(addressValOf(V)) [owise]
    rule [TupdateObjListAtLocalVContent]: <k>
        updateObjListAtLocalV (V:LocalName, Idxs:Ints, NewVal:Content)
    =>
        updateObjList(appendOffset(baseOffsetOf(V), createIdxList(Idxs)), NewVal)
    ... </k>
        requires isBaseOffsetSort(addressValOf(V))
    
    rule <k> updateRefInMap (Addr:BaseMapIdx, Ref:LocalName) => updateObjMap (Addr, addressValOf(Ref)) ...</k>
    
    rule [TupdateObjAtBaseOffset]: <k> updateObjAtAddr(Addr:BaseOffset, NewVal) => updateObjList (Addr, NewVal) ...</k>
    rule [TupdateObjAtBaseMapIdx]: <k> updateObjAtAddr(Addr:BaseMapIdx, NewAddr:Address) => updateObjMap(Addr, NewAddr) ...</k>

/*
    ---------------------------
    updateContentMultiDim (_:Content, _:List, _:Content)
*/

    rule [TupdateContentEmptyIdx]: updateContentMultiDim(_:Content, .List, NewVal) => NewVal [priority(50)]

    rule [TupdateContentOneIdx]: updateContentMultiDim (Src:List, ListItem(I:Int) .List, NewVal)
    =>
        Src [ I <- NewVal]
        requires I <Int size(Src) [priority(51)]
    rule [TupdateContentOneIdxOutOfRange]: updateContentMultiDim (Src:List, ListItem(I:Int) .List, NewVal)
    =>
        Src makeList(I -Int size(Src), uninit) ListItem(NewVal)
        requires I >=Int size(Src) [priority(51)]
    
    rule [TupdateContentMultiIdx]: updateContentMultiDim (Src:List, ListItem(I:Int) RemainIdxs:List, NewVal:Content)
    =>
        Src [ I <- updateContentMultiDim ({Src[I]}:>List, RemainIdxs, NewVal)]
        requires I <Int size(Src) [priority(52)]
    rule [TupdateContentMultiIdxOutOfRange]: updateContentMultiDim(Src:List, ListItem(I:Int) RemainIdxs:List, NewVal)
    =>
        Src makeList(I -Int size(Src), uninit) ListItem(updateContentMultiDim(uninit, RemainIdxs, NewVal))
        requires I >=Int size(Src) [priority(52)]

    rule [TupdateContentNotList]: updateContentMultiDim (OldC:Content, ListItem(I:Int) RemainIdxs:List, NewVal) 
    =>
        makeList(I, uninit) ListItem(updateContentMultiDim(OldC, RemainIdxs, NewVal))
        requires notBool isListSort(OldC) [priority(53)]

/*
    updateContentMultiDim
    -------------------------
    copy
*/

    rule [TcopySplit]: <k>
        copy(DstPtr:BaseOffset, SrcPtr:BaseOffset, Size:Int)
    =>  copy(
            DstPtr,
            SrcPtr,
            minLargestStepOffsetTypeSize(DstPtr, SrcPtr)
            )
    ~>  copy(
        addOffset(
            getSizeMatchedOffset(minLargestStepOffsetTypeSize(DstPtr, SrcPtr), largestStepOffset(DstPtr)),
            1
        ),
        addOffset(
            getSizeMatchedOffset(minLargestStepOffsetTypeSize(DstPtr, SrcPtr), largestStepOffset(SrcPtr)),
            1
        ),
        Size -Int minLargestStepOffsetTypeSize(DstPtr, SrcPtr))
    ...</k>
    requires Size >Int minLargestStepOffsetTypeSize(DstPtr, SrcPtr)

    rule minLargestStepOffsetTypeSize(LHSPtr, RHSPtr) => minInt(
                    SizeOfType(getTypeOfOffset(largestStepOffset(LHSPtr))),
                    SizeOfType(getTypeOfOffset(largestStepOffset(RHSPtr)))
                )


    rule [Tcopy]:
    <k>
        copy(DstPtr:BaseOffset, SrcPtr:BaseOffset, Size) => docopy(getSizeMatchedOffset(Size, largestStepOffset(DstPtr)), getSizeMatchedOffset(Size, largestStepOffset(SrcPtr))) ...
    </k>
        requires canOffsetMatchSize(Size, largestStepOffset(DstPtr), remainZerosToAdd(largestStepOffset(DstPtr))) andThenBool canOffsetMatchSize(Size, largestStepOffset(SrcPtr), remainZerosToAdd(largestStepOffset(SrcPtr)))

    rule [Tdocopy]:
    <k>
        docopy (DstPtr:BaseOffset, SrcPtr:BaseOffset) => updateObjList(DstPtr, readContentAtAddr(SrcPtr)) ...
    </k>

/*

    copy
    --------
    Match Type Offset

*/

    rule [TgetSizeMatchedOffsetBasic]:
        getSizeMatchedOffset(Size:Int, Addr:BaseOffset)
    =>
        Addr
    requires SizeOfType(getTypeOfOffset(Addr)) ==Int Size andThenBool(isBasicTypeSort(getTypeOfOffset(Addr)))

    //  subtype is equal to size, append zeros to the end of baseoffset
    rule [TgetSizeMatchedOffsetSubTypeLarge]:
        getSizeMatchedOffset(Size:Int, baseOffset(Base:Int, IdxList:List) #as Addr)
    =>
        appendOffsetToMatchSize(Size, baseOffset(Base, IdxList ListItem(0)))
    requires
        SizeOfType(getTypeOfOffset(Addr)) ==Int Size
    andThenBool(
            (notBool isBasicTypeSort(getTypeOfOffset(Addr)))
        andThenBool
            (SizeOfType(subType(getTypeOfOffset(Addr), ListItem(0))) ==Int SizeOfType(getTypeOfOffset(Addr)))
        )
    
    rule [TgetSizeMatchedOffsetNotBasic]:
        getSizeMatchedOffset(Size:Int, baseOffset(_:Int, _:List) #as Addr)
    =>
        Addr
    requires
        SizeOfType(getTypeOfOffset(Addr)) ==Int Size
    andThenBool(
            (notBool isBasicTypeSort(getTypeOfOffset(Addr)))
        andThenBool
            (SizeOfType(subType(getTypeOfOffset(Addr), ListItem(0))) <Int SizeOfType(getTypeOfOffset(Addr)))
        )

    rule [TgetSizeMatchedOffsetAppend]:
        getSizeMatchedOffset(Size:Int, Addr:BaseOffset)
    =>
        appendOffsetToMatchSize (Size, Addr)
    requires SizeOfType(getTypeOfOffset(Addr)) >Int Size
    rule [TgetSizeMatchedOffsetTrimEndZeros]:
        getSizeMatchedOffset(Size:Int, Addr:BaseOffset)
    =>
        trimEndZerosToMatchSize(Size, Addr)
    requires SizeOfType(getTypeOfOffset(Addr)) <Int Size


    rule [TappendOffsetToMatchSize]:
        appendOffsetToMatchSize(Size:Int, Addr:BaseOffset)
    =>
        Addr
    requires SizeOfType(getTypeOfOffset(Addr)) ==Int Size andThenBool isBasicTypeSort(getTypeOfOffset(Addr))
    rule [TappendOffsetToMatchSizeNotBasic]:
        appendOffsetToMatchSize(Size:Int, baseOffset(Base:Int, IdxList:List) #as Addr)
    =>
        appendOffsetToMatchSize (Size, baseOffset (Base, IdxList ListItem(0)))
    requires SizeOfType(getTypeOfOffset(Addr)) ==Int Size andThenBool notBool isBasicTypeSort(getTypeOfOffset(Addr))

    rule [TappendOffsetToMatchSizeRecur]:
        appendOffsetToMatchSize(Size:Int, baseOffset(Base:Int, IdxList:List) #as Addr)
    =>
        appendOffsetToMatchSize(Size, baseOffset(Base, IdxList ListItem(0)))
    requires SizeOfType(getTypeOfOffset(Addr)) >Int Size

    rule [TtrimEndZerosToMatchSize]:
        trimEndZerosToMatchSize(Size:Int, Addr:BaseOffset)
    =>
        Addr
    requires SizeOfType(getTypeOfOffset(Addr)) ==Int Size
    rule [TtrimEndZerosToMatchSizeRecur]:
        trimEndZerosToMatchSize(Size:Int, baseOffset (Base:Int, FrontIdxs:List ListItem(0)) #as Addr)
    =>
        trimEndZerosToMatchSize(Size, baseOffset(Base, FrontIdxs))
    requires SizeOfType(getTypeOfOffset(Addr)) <Int Size


    
    rule [TcanOffsetMatchSizeTrue]: canOffsetMatchSize (Size, Addr:BaseOffset, _:Int) => true
        requires SizeOfType(getTypeOfOffset(Addr)) ==Int Size [priority(50)]
    rule [TcanOffsetMatchSizeQuick]: canOffsetMatchSize (Size, Addr:BaseOffset, _:Int) => false
        requires SizeOfType(getTypeOfOffset(Addr)) <Int Size [priority(50)]
    rule [TcanOffsetMatchSizeLast]: canOffsetMatchSize (_, _, 0) => false [priority(51)]
    rule [TcanOffsetMatchSizeRecur]: canOffsetMatchSize (Size, baseOffset (Base:Int, IdxList), RemainZeros:Int) => canOffsetMatchSize (Size, baseOffset (Base, IdxList ListItem(0)), RemainZeros -Int 1) [priority(52)]

/*
    Match Type Offset
    ---
    update Obj Type
*/

    rule [TupdateObjTypeAtBase]: <k>
        updateObjTypeAtBase(Base:Int, NewTy:ObjectType)
    =>
        .
    ... </k>
    <mem>
        MEM => MEM [Base <- replaceType(searchObjAtBase(Base), NewTy)]
    </mem>

    rule [TupdateObjType]: <k>
        updateObjType(Addr:Address, NewTy) => updateObjTypeAtBase(getBase(Addr), NewTy)
    ... </k>

    rule [TupdateObjTypeAtLocalV]: <k>
        updateObjTypeAtLocalV (L:LocalName, NewTy:ObjectType) => updateObjType(addressValOf(L), NewTy:ObjectType)
    ... </k>
    
//------------------mem
//create:
    rule <k> allocObjAtBase (Base:Int, O:Object) => . ...</k>
        <mem>
            MAP => MAP [ Base <- O ]
        </mem>
    rule <k> allocObj(O:Object) => allocObjAtBase(currBase(), O) ~> useNewAddr() ...</k>
        
    rule <k> allocUnknownObj(Loc:Location) => allocObj(createObjWithSuitableLifeTime(unknown, true, uninit, .Map, Loc)) ...</k>
    rule <k> allocArray(ElemTD:ValueRef, Cap:Int, Loc:Location) => allocObj(createObjWithSuitableLifeTime([ Cap x ElemTD ], true, .List, .Map, Loc)) ...</k>

    
endmodule