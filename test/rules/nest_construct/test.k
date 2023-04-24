module TEST
    imports INT
    syntax Address ::= BaseOffset
                    |   ctor1(Address, Address) [seqstrict]
                    |   increase(BaseOffset) [function]
                    |   increaseWrapper(BaseOffset) [seqstrict]
    syntax KResult ::= BaseOffset
    syntax BaseOffset ::= baseOffset(Int, Int)

    rule increase (baseOffset (A, B)) => baseOffset (A +Int 1, B)
    rule <k> increaseWrapper (B) => increase (B) ...</k>
    rule <k> ctor1 (baseOffset (A, B), baseOffset (C, D)) => baseOffset (A +Int B, C +Int D) ...</k>

endmodule