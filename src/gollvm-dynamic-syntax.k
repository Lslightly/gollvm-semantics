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

    //  object(TypeDescriptor, SizeConst, ListOfValues, MapOfValues, WhetherInStack)
    //  values in List/Map are lazily refreshed.
    //  List is Int to Int map
    //  Map is ValueRef to Int map, i.e. key/value address map
    //  `SizeConst == true` means num of elements in object is known. We should check ListOfValues. MapOfValues is .Map
    //  `SizeConst == false` means num of elements in object is not constant. We should check MapOfValues. ListOfValues is .List
    
    syntax Int ::= lookUpBase(LocalName) [function]
    syntax KResult ::= Int
    syntax Object ::= object(ObjectType, Bool, List, Map, Location) | lookUpMem(Int) [function] | lookUpObjectOfName(LocalName) [function]
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
    syntax Int ::= findValAddr(ValueRef, Int) [function]
    //  updateRefInMap(Container, Containee, Key) Container's Map contains address of Containee
    syntax KItem ::= updateRefInMap(LocalName, LocalName, ValueRef)
endmodule