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

    //  object(TypeDescriptor, SizeConst, ListOfValues, MapOfValues, WhetherInStack)
    //  values in List are lazily refreshed.
    //  `SizeConst == true` means num of elements in object is known. We should check ListOfValues. MapOfValues is .Map
    //  `SizeConst == false` means num of elements in object is not constant. We should check MapOfValues. ListOfValues is .List
    syntax KItem ::= object(ValueRef, Bool, List, Map, Bool)
    syntax KItem ::= "uninit"
endmodule