//  test PGM is reduce(e, e, e, e)
module LABEL
    //  commenting out this syntax make this module compile successfully and work again
    syntax LabelStringConstant ::= r"[a-zA-Z\\.\\_\\-\\$0-9]*\\:" [token]


    syntax Exp ::= "e" [token] | reduce(Exps) [function]
    syntax Exps ::= List{Exp, ","}

    //  E:Exp is parsed as `LabelStringConstant Exp` or `E:Exp` type casting?
    rule reduce(E:Exp, Es:Exps) => reduce(Es)
    rule reduce(.Exps) => e
endmodule