requires "gollvm-syntax.k"
requires "gollvm-configuration.k"

module GOLLVM-DYNAMIC-SYNTAX
    imports GOLLVM-SYNTAX
    imports LIST
    imports INT-SYNTAX
    imports BOOL-SYNTAX
    imports ARRAY-SYNTAX
    syntax KItem ::= evalBlock(LabelString) | evalFunc(GlobalName) | evalInsts(List) | evalTermInst(BBTerminatorInstruction) | execInst(Instruction)

    //  object(TypeDescriptor, ListSize, ArrayOfValues, WhetherInStack)
    //  values in List are lazily refreshed.
    syntax KItem ::= object(ValueRef, Int, Array, Bool)
    syntax KItem ::= "uninit"
endmodule