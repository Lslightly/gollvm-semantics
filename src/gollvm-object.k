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
    syntax Location ::= "heap" | "stack"
    
    //  object(TypeDescriptor, SizeConst, Content, Map[Key]AddressOf(Value), WhetherInStack)
    //  values in List/Map are lazily refreshed.
    //  Content is the content of object, whose size is constant.
    //  Map is ValueRef to Address map, i.e. key/value address map
    //  `SizeConst == true` means num of elements in object is known. We should check ListOfValues. MapOfValues is .Map
    //  `SizeConst == false` means num of elements in object is not constant. We should check MapOfValues. ListOfValues is .List
    syntax Content ::= NonAddr | Address | List | UnInit
    syntax KItem ::= Content
    syntax KResult ::= List
    syntax Object ::= object(ObjectType, Bool, Content, Map, Location)

// create/search:
                    | createObjList(ObjectType, Location) [function]
                    | createObjMap(ObjectType, Location) [function]
                    | searchObjAtBase(Int) [function]
                    | searchObjAtAddr(Address) [function]
                    | searchObjAtLocalV(LocalName) [function]
                    | moveToHeap(Object) [function]
                    //  replaceType(OldObj, NewType)
                    | replaceType(Object, ObjectType) [function]

// properties:
    syntax Bool ::= inHeap(Object) [function]
                |   isSizeConst(Object) [function]
    syntax Type ::= getObjType(Object) [function]
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
        every baseoffset has its type. this function return the most type matched BaseOffset from OriginAddr
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
                    /*
                        readObjAtLocalVWithIdxList(V, Idxs)
                        V's address must be baseoffset
                    */
                    |   readObjAtLocalVWithIdxList(LocalName, Ints) [function]
                    //  lazy evaluated
                    |   getContentElemMultiDim(Content, List) [function]
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

// create/search:-------------------------------
    rule createObjList(ObjTy:Type, Loc) => object(ObjTy, true, initOfType(ObjTy), .Map, Loc)
    rule createObjList(ObjTy, Loc) => object(ObjTy, true, uninit, .Map, Loc) [owise]

    rule createObjMap(ObjTy, Loc) => object (ObjTy, false, .List, .Map, Loc)

    rule [[ searchObjAtBase(Addr:Int) => Obj ]]
        <mem>
            ... Addr |-> Obj ...
        </mem>
    rule searchObjAtAddr (baseOffset (Base:Int, _:List)) => searchObjAtBase (Base)
    rule searchObjAtAddr (baseMapIdx (Base:Int, _:ValueRef)) => searchObjAtBase (Base)
    rule searchObjAtLocalV (L:LocalName) => searchObjAtAddr(addressValOf(L))
    rule moveToHeap (object(Ty, SizeConst, C, M, _:Location)) => object(Ty, SizeConst, C, M, heap)
    rule replaceType(object(_:ObjectType, SizeConst, C, M, Loc), NewType:ObjectType) => object(NewType, SizeConst, C, M, Loc)

// properties:---------------------------------
    rule inHeap(object(_:ObjectType, _:Bool, _:Content, _:Map, Loc:Location)) => Loc ==K heap

    rule isSizeConst(object(_:ObjectType, SizeConst:Bool, _:Content, _:Map, _:Location)) => SizeConst

    rule getObjType(object(ObjTy:ObjectType, _:Bool, _:Content, _:Map, _:Location)) => {ObjTy}:>Type requires isTypeSort(ObjTy)

    rule [[ isValidBaseMapIdxCtor(baseMapIdx (Addr:Int, Key:ValueRef)) => Key in_keys(M) ]]
        <mem>
            ...
            Addr |-> object (_:ObjectType, _:Bool, _:List, M:Map, _:Location)
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
            Addr |-> object(_:ObjectType, _:Bool, _:Content, M:Map, _:Location)
            ...
        </mem> requires Key in_keys(M)
    rule [TreadObjList]: [[ readObjList(baseOffset (Base:Int, IdxList:List)) => getContentElemMultiDim(Cont, IdxList:List) ]]
        <mem>
            ... Base |-> object (_:ObjectType, _:Bool, Cont, _:Map, _:Location) ...
        </mem>
    rule readContentAtAddr (Addr:BaseOffset) => readObjList (Addr)
    rule readContentAtAddr (Addr:BaseMapIdx) => readObjMap (Addr)

    rule [TreadObjAtLocalV]: readObjAtLocalV(L:LocalName) => readContentAtAddr(addressValOf(L))
    rule [TreadObjAtLocalVWithIdxList]: readObjAtLocalVWithIdxList(L:LocalName, Idxs:Ints) => readContentAtAddr(appendOffset({addressValOf(L)}:>BaseOffset, createIdxList(Idxs)))
    rule [TreadObjAtLocalVWithIdxListWrapper]:
    <k>
        readObjAtLocalVWithIdxListWrapper(L:LocalName, Idxs:Ints) => readObjAtLocalVWithIdxList(L, Idxs) ...
    </k>

    rule [TgetContentElemMultiDimOneIdx]: getContentElemMultiDim (Src:List, ListItem(I:Int) .List) => {Src[I]}:>Content [priority(50)]
    rule [TgetContentElemMultiDimMultiIdx]:getContentElemMultiDim (Src:List, ListItem(I:Int) Remains:List) => getContentElemMultiDim({Src[I]}:>List, Remains) [priority(51)]
    rule [TgetContentElemMultiDimEmptyIdx]:getContentElemMultiDim(L:Content, .List) => L
    

// update:-----------------------------------
    rule updateListOfObject(object(T:ObjectType, Const:Bool, L:Content, M:Map, Loc:Location), IdxList:List, NewVal:Content) => object(T, Const, updateContentMultiDim(L, IdxList, NewVal), M, Loc)

    rule updateMapOfObject (object(T:ObjectType, Const:Bool, L:Content, M:Map, Loc:Location), Key:ValueRef, NewVal:Address) => object(T, Const, L, M [Key <- NewVal], Loc)

    rule <k> updateObjList (baseOffset(Base, IdxList:List), NewVal:Content) => . ...  </k>
        <mem>
            Mem => Mem [ Base <- updateListOfObject (searchObjAtBase(Base), IdxList, NewVal)]
        </mem>
    
    rule <k> updateObjMap (baseMapIdx (Base:Int, Key:ValueRef), ValPtr:Address) => . ... </k>
        <mem>
            Mem => Mem [ Base <- updateMapOfObject(searchObjAtBase (Base), Key, ValPtr) ]
        </mem>
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
        
    rule <k> allocUnknownObj(Loc:Location) => allocObj(object(unknown, true, uninit, .Map, Loc)) ...</k>
    rule <k> allocArray(ElemTD:ValueRef, Cap:Int, Loc:Location) => allocObj(object([ Cap x ElemTD ], true, .List, .Map, Loc)) ...</k>

    
endmodule