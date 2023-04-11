requires "gollvm-syntax.k"
requires "gollvm-configuration.k"

module GOLLVM-DYNAMIC-SYNTAX
    imports GOLLVM-SYNTAX
    imports LIST
    imports INT-SYNTAX
    imports BOOL-SYNTAX
    imports ARRAY-SYNTAX
    imports MAP
    syntax KItem ::= evalBlock(LabelString) | evalFunc(GlobalName) | evalInsts(List) | evalTermInst(BBTerminatorInstruction) | execInst(Instruction)

    //  addrAlias(dst, src) used to addrAlias dst with src
    syntax KItem ::= addrAlias(LocalName, LocalName) | addrMapInsert(LocalName, Int)
    
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

    //  object(TypeDescriptor, SizeConst, ListOfValues, MapOfValues, WhetherInStack)
    //  values in List/Map are lazily refreshed.
    //  List is Int to KItem map
    //  Map is ValueRef to Int map, i.e. key/value address map
    //  `SizeConst == true` means num of elements in object is known. We should check ListOfValues. MapOfValues is .Map
    //  `SizeConst == false` means num of elements in object is not constant. We should check MapOfValues. ListOfValues is .List
    syntax Object ::= object(ObjectType, Bool, List, Map, Location) | lookUpMem(Int) [function] | lookUpObjectOfName(LocalName) [function]
    syntax KItem ::= getListElem(Object) [function] | getListElemOfName(LocalName) [function]
    syntax Bool ::= inHeap(Object) [function]
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