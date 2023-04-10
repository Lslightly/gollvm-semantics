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
    syntax KItem ::= addrAlias(LocalName, LocalName)
    
    // header(ObjectType) is a List that contains the pointer to the underlying structure
    syntax ObjectType ::= ValueRef | MapType | Type | "unknown" | header(ObjectType)
    syntax MapType ::= "map" "[" ObjectType "]" ObjectType
    syntax Location ::= "heap" | "stack"

    //  object(TypeDescriptor, SizeConst, ListOfValues, MapOfValues, WhetherInStack)
    //  values in List are lazily refreshed.
    //  `SizeConst == true` means num of elements in object is known. We should check ListOfValues. MapOfValues is .Map
    //  `SizeConst == false` means num of elements in object is not constant. We should check MapOfValues. ListOfValues is .List
    
    syntax KItem ::= lookUpBase(LocalName) [function]
    syntax KResult ::= Int
    syntax Object ::= object(ObjectType, Bool, List, Map, Location) | lookUpMem(Int) [function]
    syntax KResult ::= Object
    //  Addr |-> firstKItem.List[Int] = secondKItem
    syntax KItem ::= updateObjectList(Int, Object, Int, KItem) [seqstrict]
    syntax KItem ::= "uninit"
endmodule