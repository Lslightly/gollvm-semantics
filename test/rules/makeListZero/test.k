module TEST
    imports LIST
    imports INT
    syntax List ::= appendZeros(List, Int) [function]
    rule appendZeros (Src, Num) => Src makeList (Num, 0)
endmodule