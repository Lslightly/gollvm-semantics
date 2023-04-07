module COMMON
    imports INT-SYNTAX // non problematic productions
    syntax Ints ::= List{Exp, ","}
    syntax Exp ::= test(Ints) [function]
    syntax Exp ::= Int
endmodule // used for generating the parser for programs

// not included in the semantics module 
module TEST-SYNTAX
    imports COMMON
    imports INT-SYNTAX // empty terminals can cause problems 
    syntax Exp ::= "" [symbol, klabel(emptytoken)]
    // conflicts with domains.md definition of UNSIGNED-INT-SYNTAX
    syntax UnsignedInt ::= r"[0-9][0-9]" [token]
    // conflicts with domains.md definition of String
    syntax StringName ::= r"\\\"[^\\\"]\\\"" [token]
endmodule

module TEST
    imports COMMON
    imports INT
    // $PGM:StartSymbol for program parsing
    configuration <k> $PGM:Ints </k>
    syntax Exp ::= "nothing" [symbol, klabel(emptytoken)]
    rule test (.Ints) => nothing // reference through redeclaration
    rule test (_:Ints) => `emptytoken`(.KList) // reference the klabel directly
endmodule