module TEST
    imports DOMAINS

    syntax Test ::= "a" | "b" [klabel(#b), onlyLabel, symbol]
    syntax Element ::= val(KItem) [strict] | ElementResult
    syntax ElementResult ::= valValue(K)
    syntax KResult ::= ElementResult
    rule val(R) => valValue(R) [structural]

    syntax ElemList ::= List{Element,","} [strict]
    syntax Int ::= lengthOfList(ElemList) [function]

    rule #b(.KList) => 0
    rule lengthOfList (.ElemList) => 0
    rule lengthOfList (E:Element, L:ElemList) => 1 +Int lengthOfList (L)

endmodule