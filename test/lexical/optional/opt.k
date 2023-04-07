module OPT
    imports STRING
    imports MAP
    
    syntax Attr ::= "attr" [token]
    syntax Align ::= "align" [token]
    syntax FuncNoAttr ::= Align String | String
    syntax Func ::= Attr FuncNoAttr | FuncNoAttr
    //  syntax Func ::= Attr? Align? String

    configuration
    <T>
        <k>
            $PGM:Func
        </k>
        <funcs>
            .Map
        </funcs>
    </T>

    rule    <k>attr A:String => . ...</k>
            <funcs> FUNCS => FUNCS [A <- attr] </funcs>
    rule    <k>A:String => . ...</k>
            <funcs> FUNCS => FUNCS [A <- ""] </funcs>
    rule    <k>attr align A:String => . ...</k>
            <funcs> FUNCS => FUNCS [A <- "attr align"]</funcs>
endmodule