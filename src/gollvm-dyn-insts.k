requires "gollvm-syntax.k"
requires "gollvm-configuration.k"
requires "gollvm-dynamic-syntax.k"
requires "gollvm-call.k"

module DYN-INSTS-INCLUDE
    imports GOLLVM-SYNTAX
    imports GOLLVM-CONFIGURATION
    imports GOLLVM-DYNAMIC-SYNTAX
    imports GOLLVM-CALL
endmodule

module GOLLVM-DYN-INSTS-SYNTAX
    imports DYN-INSTS-INCLUDE
    imports STRING-SYNTAX
    syntax KItem ::= warn(KItem, String) | error(KItem, String)
endmodule

module GOLLVM-DYN-INSTS
    imports GOLLVM-DYN-INSTS-SYNTAX
    imports GOLLVM-NORMAL-INSTS
    imports GOLLVM-TERM-INSTS
    rule <k> execInst(I) => . ...</k>
        <warnings> ... .List => ListItem(warn(I, "not modeled"))</warnings> [owise]
endmodule

//  for normal insts like add, gep
module GOLLVM-NORMAL-INSTS
endmodule

module GOLLVM-TERM-INSTS
    imports GOLLVM-DYN-INSTS-SYNTAX
    imports DYN-INSTS-INCLUDE
    rule <k> evalTermInst (Term) => . ...</k>
        <errors> ... .List => ListItem(error(Term, "term inst not modeled"))</errors> [owise]
    rule <k> evalTermInst(ret _:VoidType _:InstructionMetadatas) => . ...</k>
endmodule