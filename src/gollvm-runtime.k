requires "gollvm-syntax.k"
requires "gollvm-configuration.k"
requires "gollvm-call.k"
requires "gollvm-dyn-insts.k"

module GOLLVM-RUNTIME-SYNTAX
    imports GOLLVM-SYNTAX
    imports GOLLVM-CALL-SYNTAX
    syntax KItem ::= newobject(LocalName, ValueRef)
    syntax KItem ::= makemap(LocalName, MapType)
endmodule

module RUNTIME-PREPROCESS
    imports GOLLVM-CALL-SYNTAX
    imports GOLLVM-RUNTIME-SYNTAX
    imports GOLLVM-CONFIGURATION
    imports GOLLVM-DYN-INSTS-SYNTAX
    rule <k> NonVoidGlobalCall (LocalV, _:Type, @runtime.newobject, _:ParamFactor, _:Type _:ParamAttrs TypeId:ValueRef)
    =>
    newobject(LocalV, TypeId) ...</k>
    rule <k> NonVoidGlobalCall (LocalV, _:Type, @runtime.makemap__small, _:ParamList)
    =>
    makemap(LocalV, map[unknown]unknown) ... </k>

    rule <k>
    VoidGlobalCall (@runtime.gcWriteBarrier, _:ParamFactor, _:Type _:ParamAttrs Dst:LocalName, _:Type _:ParamAttrs Src:LocalName)
    => storeAddress(Dst, Src) ... </k>
endmodule

module GOLLVM-RUNTIME
    imports GOLLVM-RUNTIME-SYNTAX
    imports GOLLVM-DYNAMIC-SYNTAX
    imports RUNTIME-PREPROCESS
    imports LIST
    imports INT
    imports BOOL
    imports MAP
    rule <k> newobject(L:LocalName, TypeId:ValueRef) => . ...</k>
        <mem> Mem => Mem [ Addr <- object(TypeId, true, makeList(1, uninit), .Map, heap) ] </mem>
        <nextId> Addr => Addr +Int 1 </nextId>
        <local2Base>
            Local2Base => Local2Base [ L <- Addr ]
        </local2Base>

    rule <k> makemap(L, MType:MapType) => . ...</k>
        <mem>... .Map => 
        Addr |-> object(header(MType), true, makeList(1, Addr +Int 1), .Map, heap)
        Addr +Int 1 |-> object((MType), false, .List, .Map, heap)
        ...
        </mem>
        <nextId> Addr => Addr +Int 2</nextId>
        <local2Base>
            Local2Base => Local2Base [L <- Addr]
        </local2Base>

endmodule
