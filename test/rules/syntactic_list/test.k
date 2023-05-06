module TEST
    imports INT
    imports LIST
    syntax Ints ::= List{Int, ","}
                |   test(Int) [function]
    syntax KItem ::= Ints
    rule test(I:Int) => I, test(I -Int 1) [owise]
    rule test(0) => .Ints
endmodule