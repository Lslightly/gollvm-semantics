module NONVOIDCALL
    imports INT
    imports MAP
    syntax LocalValID ::= r"%[0-9]+" [token]
    syntax LocalVar ::=  r"%[a-zA-Z\\.\\_\\-\\$][0-9a-zA-Z\\.\\_\\-\\$]*" [token]
    syntax LocalVar ::= r"%\\\"[^\\\"]*\\\"" [token]
    syntax TypeId ::= "int" [token]

    syntax LocalName ::= LocalVar | LocalValID
    syntax Call ::= LocalName "=" TypeId
    syntax KItem ::= newobject(LocalName, TypeId)
    syntax IntType ::= LocalName

    configuration   <k>$PGM:Call</k>
                    <local2Base> .Map </local2Base>
                    <nextId> 0 </nextId>
    rule <k> L = Type => newobject (L, Type) ...</k>
    rule <k> newobject (L, _) => . ...</k>
        <local2Base> MAP => MAP [L <- Base]</local2Base>
        <nextId> Base => Base +Int 1 </nextId>


endmodule