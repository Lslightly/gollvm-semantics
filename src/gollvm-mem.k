requires "gollvm-syntax.k"
requires "gollvm-configuration.k"
requires "gollvm-dynamic-syntax.k"

module GOLLVM-MEM-SYNTAX
    imports GOLLVM-SYNTAX
    imports GOLLVM-CONFIGURATION
    imports GOLLVM-DYNAMIC-SYNTAX

    //  addrAlias(dst, src) used to addrAlias dst with src
    syntax KItem ::= addrAlias(LocalName, LocalName) | addrMapInsert(LocalName, Int)
    //  store(dst, Address)
    syntax KItem ::= storeAddress(LocalName, LocalName)
    //  store(dst, nonAddr(Value))
    syntax KItem ::= storeNonAddr(LocalName, NonAddr)

    // header(ObjectType) is a List that contains the pointer to the underlying structure
    syntax ObjectType ::= ValueRef | MapType | Type | "unknown" | header(ObjectType)
    syntax MapType ::= "map" "[" ObjectType "]" ObjectType
    syntax Location ::= "heap" | "stack"

    //  nonAddr for primitive type
    syntax Bool ::= isNonAddrSort(KItem) [function]
    syntax NonAddr ::= nonAddr(KItem)
    syntax KResult ::= NonAddr
    syntax KItem ::= trimWrapperNonAddr(KItem) [function]
    syntax KItem ::= lookUpPrim(LocalName) [function]

    //  Type -> List
    syntax List ::= makeNestingList(Type) [function]

    //  object(TypeDescriptor, SizeConst, ListOfValues, MapOfValues, WhetherInStack)
    //  values in List/Map are lazily refreshed.
    //  List is Int to KItem map
    //  Map is ValueRef to Int map, i.e. key/value address map
    //  `SizeConst == true` means num of elements in object is known. We should check ListOfValues. MapOfValues is .Map
    //  `SizeConst == false` means num of elements in object is not constant. We should check MapOfValues. ListOfValues is .List
    syntax Object ::= object(ObjectType, Bool, List, Map, Location) | lookUpMem(Int) [function] | lookUpObjectOfName(LocalName) [function]
    syntax KItem ::= getListElem(Object) [function] | getListElemOfName(LocalName) [function]
    syntax Bool ::= inHeap(Object) [function]
    syntax Bool ::= isAddr(LocalName) [function]
    syntax Int ::= lookUpBase(LocalName) [function] | deref(LocalName) [function]
    syntax KResult ::= Int
    syntax KResult ::= Object
    //  Addr |-> Object.List[Int] = NewVal
    syntax KItem ::= updateObjectList(Int, Object, Int, KItem) [seqstrict]
    //  Addr |-> Object.Map[ValueRef] = NewVal
    syntax KItem ::= updateObjectMap(Int, Object, ValueRef, Int) [seqstrict]
    syntax UnInit ::= "uninit"
    syntax KItem ::= UnInit
    syntax KResult ::= UnInit
    //  isValueInObjectMap(Key, Addr)
    //  Addr |-> object(..., Map ...)
    syntax Bool ::= isKeyInMap(ValueRef, Int) [function]
    //  findValAddr(Key, Addr)
    //  Addr |-> object(..., Map ...)
    //  return Map[Key]
    syntax Int ::= findValAddr(ValueRef, Int) [function]
    //  updateRefInMap(ContainerAddr, Containee, Key) ContainerAddr's object's Map contains address of Containee
    syntax KItem ::= updateRefInMap(Int, LocalName, ValueRef)
    
endmodule

module GOLLVM-MEM
    imports GOLLVM-MEM-SYNTAX
    imports K-EQUAL

    rule <k> addrAlias(Dst:LocalName, Src:LocalName) => addrMapInsert(Dst, {MAP[Src]}:>Int) ...</k>
        <local2Base>
            MAP
        </local2Base>
    rule <k> addrMapInsert(Dst:LocalName, Addr:Int) => . ... </k>
        <local2Base>
            MAP => MAP [Dst <- Addr]
        </local2Base>
    
    rule <k> updateRefInMap (ContainerAddr:Int, Containee:LocalName, Key:ValueRef) => updateObjectMap (ContainerAddr, lookUpMem(ContainerAddr), Key, lookUpBase (Containee)) ... </k>

    rule <k> storeAddress (Dst:LocalName, Src:LocalName) => updateObjectList (lookUpBase(Dst), lookUpMem(lookUpBase(Dst)), 0, lookUpBase(Src)) ...</k>
        requires notBool (inHeap(lookUpObjectOfName(Dst)) andBool notBool inHeap(lookUpObjectOfName (Src)))
    rule <k> storeAddress (Dst:LocalName, Src:LocalName) => updateObjectList (lookUpBase(Dst), lookUpMem(lookUpBase(Dst)), 0, lookUpBase(Src)) ...</k>
        <currInst> CurrInst </currInst>
        <errors>... .List => ListItem(heap2stack(Dst, Src, CurrInst))</errors>
        [owise]
    
    rule <k> storeNonAddr (L:LocalName, Non:NonAddr) => updateObjectList (lookUpBase (L), lookUpObjectOfName (L), 0, Non) ...</k>
    
    rule isNonAddrSort(_:NonAddr) => true
    rule isNonAddrSort(_) => false [owise]

    rule trimWrapperNonAddr(nonAddr(I:KItem)) => I
    
    rule [[ lookUpPrim (V:LocalName) => Prim ]]
        <local2prim>
            ... V |-> Prim ...
        </local2prim>

    rule getListElem(object(_:ObjectType, _:Bool, LIST, _:Map, _:Location)) => LIST[0]
    rule getListElemOfName(L:LocalName) => getListElem(lookUpObjectOfName(L))

    rule inHeap(object(_:ObjectType, _:Bool, _:List, _:Map, Loc:Location)) => Loc ==K heap

    rule [[ isAddr(L:LocalName) => L in_keys(Local2Base) ]]
        <local2Base>
            Local2Base
        </local2Base>
    rule [[ lookUpBase(L:LocalName) => Addr ]]
        <local2Base>
            ... L |-> Addr:Int ...
        </local2Base> requires isAddr(L)
    rule [[ deref(L:LocalName) => {LIST[0]}:>Int ]]
        <mem>
            ...
            lookUpBase(L) |-> object(_:ObjectType, _:Bool, LIST, _:Map, _:Location)
            ...
        </mem>
    
    rule [[ lookUpMem(Addr:Int) => Obj ]]
        <mem>
            ... Addr |-> Obj ...
        </mem>
    rule lookUpObjectOfName (L:LocalName) => lookUpMem (lookUpBase(L))

    rule <k> updateObjectList (Addr, object(Type:ObjectType, Const:Bool, LIST, MAP, Loc), Idx:Int, NewVal:KItem) => . ...  </k>
        <mem>
            Mem => Mem [ Addr <- object(Type, Const, LIST[Idx <- NewVal], MAP, Loc)]
        </mem>
    
    rule <k> updateObjectMap (Addr, object(Type:ObjectType, Const:Bool, LIST, MAP, Loc), Key:ValueRef, ValPtr:Int) => . ... </k>
        <mem>
            Mem => Mem [ Addr <- object (Type, Const, LIST, MAP[Key <- ValPtr], Loc) ]
        </mem>
    
    rule [[ isKeyInMap(Key:ValueRef, Addr:Int) => Key in_keys(M) ]]
        <mem>
            ...
            Addr |-> object (_:ObjectType, _:Bool, _:List, M:Map, _:Location)
            ...
        </mem>
    
    rule [[ findValAddr(Key:ValueRef, Addr:Int) => {M [ Key ]}:>Int ]]
        <mem>
            ...
            Addr |-> object(_:ObjectType, _:Bool, _:List, M:Map, _:Location)
            ...
        </mem> requires Key in_keys(M)
    
    
endmodule