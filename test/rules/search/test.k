module TEST
    imports BOOL
    imports INT
    syntax Test ::= test()
    rule [TtestTrue]:test() => true
    rule [TtestFalse]: test() => false
    rule [Tfalse]: false => 0
    rule [Ttrue]: true => 1
    rule [Tzero]: 0 => 2
    rule [Tone]: 1 => 3
endmodule