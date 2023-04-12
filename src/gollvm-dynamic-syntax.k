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

    syntax KItem ::= warn(KItem, String) | error(KItem, String) | heap2stack(KItem, KItem, KItem)

endmodule