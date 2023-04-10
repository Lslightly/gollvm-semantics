requires "gollvm-syntax.k"
requires "gollvm-configuration.k"
requires "gollvm-call.k"

module GOLLVM-RUNTIME-SYNTAX
    imports GOLLVM-SYNTAX
    imports GOLLVM-CALL-SYNTAX
    syntax KItem ::= newobject(LocalName, ValueRef)
endmodule

module RUNTIME-PREPROCESS
    imports GOLLVM-CALL-SYNTAX
    imports GOLLVM-RUNTIME-SYNTAX
    imports GOLLVM-CONFIGURATION
    rule <k> NonVoidGlobalCall (LocalV, _:Type, @runtime.newobject, _:ParamFactor, _:Type _:ParamAttrs TypeId:ValueRef)
    =>
        newobject(LocalV, TypeId) ...</k>
endmodule

module GOLLVM-RUNTIME
    imports GOLLVM-RUNTIME-SYNTAX
    imports RUNTIME-PREPROCESS
    imports LIST
    imports INT
    imports BOOL
    rule <k> newobject(L, TypeId) => . ...</k>
        <mem> Mem => Mem [ Base <- object(TypeId, true, makeList(1, uninit), .Map, false) ] </mem>
        <nextId> Base => Base +Int 1 </nextId>
        <local2Base>
            Local2Base => Local2Base [ L <- Base ]
        </local2Base>

endmodule
