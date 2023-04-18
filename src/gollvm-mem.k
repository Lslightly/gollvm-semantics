requires "gollvm-syntax.k"
requires "gollvm-configuration.k"
requires "gollvm-dynamic-syntax.k"
requires "gollvm-dyn-insts.k"

module GOLLVM-MEM-INCLUDE
    imports GOLLVM-SYNTAX
    imports GOLLVM-CONFIGURATION
    imports GOLLVM-DYNAMIC-SYNTAX
endmodule


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

module OBJECT-SYNTAX
    imports GOLLVM-MEM-SYNTAX
    imports GOLLVM-MEM-INCLUDE

    // header(ObjectType) is a List that contains the pointer to the underlying structure
    syntax ObjectType ::= ValueRef | MapType | Type | "unknown" | header(ObjectType)
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
    syntax Object ::= object(ObjectType, Bool, Content, Map, Location)

// create/search:
                    | createObjList(ObjectType, Location) [function]
                    | createObjMap(ObjectType, Location) [function]
                    | searchObjAtBase(Int) [function]
                    | searchObjAtAddr(Address) [function]
                    | searchObjAtLocalV(LocalName) [function]

// properties:
    syntax Bool ::= inHeap(Object) [function]
                |   isSizeConst(Object) [function]
    syntax ObjectType ::= getObjType(Object) [function]
    syntax KResult ::= Int
    syntax KResult ::= Object
    //  isValidBaseMapIdxCtor(Key, Addr)
    //  Addr |-> object(..., Map ...)
    //  return Key in_keys(Map)
    syntax Bool ::= isValidBaseMapIdxCtor(BaseMapIdx) [function]
    /*
        if content is 
            { { i64*, i1 }, i64, i64 }
        the number of indexs to visit type of i64* is 2, i.e. 0, 0
    */
    syntax Int ::= cntNumIdxToType(Content, Type) [function]

// read:
    //  readObjMap(baseMapIdx(Addr, Key))
    //  Addr |-> object(..., Map ...)
    //  return Map[Key]
    syntax Address ::= readObjMap(BaseMapIdx) [function]
    //  obj/localname idx list
    syntax Content ::=  readObjList(BaseOffset) [function]
                    |   readObjAtAddr(Address) [function]
                    |   readObjAtLocalV(LocalName) [function]
                    |   getContentElemMultiDim(Content, List) [function]

// update:
    //  ((Addr, IdxList), NewVal)
    //  Addr |-> Object(List[IdxList] <- NewVal)
    syntax KItem ::= updateObjList(BaseOffset, Content) [seqstrict]
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

endmodule

module OBJECT
    imports OBJECT-SYNTAX
    imports GOLLVM-MEM-SYNTAX
    imports K-EQUAL

// create/search:-------------------------------
    // rule createObjList (ObjTy, Loc) => object (ObjTy, true, /*TODO*/, .Map, Loc)

    // rule createObjMap (ObjTy, Loc) => object (ObjTy, false, .List, /*TODO*/, Loc)

    rule [[ searchObjAtBase(Addr:Int) => Obj ]]
        <mem>
            ... Addr |-> Obj ...
        </mem>
    rule searchObjAtAddr (baseOffset (Base:Int, _:List)) => searchObjAtBase (Base)
    rule searchObjAtAddr (baseMapIdx (Base:Int, _:ValueRef)) => searchObjAtBase (Base)
    rule searchObjAtLocalV (L:LocalName) => searchObjAtAddr(addressValOf(L))

// properties:---------------------------------
    rule inHeap(object(_:ObjectType, _:Bool, _:Content, _:Map, Loc:Location)) => Loc ==K heap

    rule isSizeConst(object(_:ObjectType, SizeConst:Bool, _:Content, _:Map, _:Location)) => SizeConst

    rule getObjType(object(ObjTy:ObjectType, _:Bool, _:Content, _:Map, _:Location)) => ObjTy

    rule [[ isValidBaseMapIdxCtor(baseMapIdx (Addr:Int, Key:ValueRef)) => Key in_keys(M) ]]
        <mem>
            ...
            Addr |-> object (_:ObjectType, _:Bool, _:List, M:Map, _:Location)
            ...
        </mem>
    
    rule cntNumIdxToType(C:List, T:Type) => cnt1stItemDim(C) -Int cntDepthOf1stUnderlyingType(T)

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
    rule readObjAtAddr (Addr:BaseOffset) => readObjList (Addr)
    rule readObjAtAddr (Addr:BaseMapIdx) => readObjMap (Addr)
    rule [TreadObjAtLocalV]: readObjAtLocalV(L:LocalName) => readObjAtAddr(addressValOf(L))

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
    
    rule <k> updateRefInMap (Addr:BaseMapIdx, Ref:LocalName) => updateObjMap (Addr, addressValOf(Ref)) ...</k>
    
    rule [TupdateObjAtBaseOffset]: <k> updateObjAtAddr(Addr:BaseOffset, NewVal) => updateObjList (Addr, NewVal) ...</k>
    rule [TupdateObjAtBaseMapIdx]: <k> updateObjAtAddr(Addr:BaseMapIdx, NewAddr:Address) => updateObjMap(Addr, NewAddr) ...</k>

    rule [TupdateContentEmptyIdx]: updateContentMultiDim(_:Content, .List, NewVal) => NewVal [priority(50)]
    rule [TupdateContentOneIdx]: updateContentMultiDim (Src:List, ListItem(I:Int) .List, NewVal) => Src [ I <- NewVal] [priority(51)]
    rule [TupdateContentMultiIdx]: updateContentMultiDim (Src:List, ListItem(I:Int) RemainIdxs:List, NewVal:Content) => Src [ I <- updateContentMultiDim ({Src[I]}:>List, RemainIdxs, NewVal)] [priority(52)]
    
endmodule

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

    
endmodule