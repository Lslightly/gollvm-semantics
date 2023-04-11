requires "gollvm-syntax.k"
requires "gollvm-configuration.k"
requires "gollvm-call.k"
requires "gollvm-dyn-insts.k"

module GOLLVM-RUNTIME-SYNTAX
    imports GOLLVM-SYNTAX
    imports GOLLVM-CALL-SYNTAX
    syntax KItem ::= newobject(LocalName, ObjectType)
    syntax KItem ::= makemap(LocalName, MapType)
    syntax KItem ::= mapassign(LocalName, LocalName, ValueRef)
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
    rule <k> NonVoidGlobalCall (LocalV, _:Type, @runtime.mapassign__fast64, _:ParamFactor, _:ParamFactor, _:Type _:ParamAttrs Hmap:LocalName, _:Type _:ParamAttrs Key:ValueRef) => mapassign(LocalV, Hmap, Key) ...</k>

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
    imports K-EQUAL
    rule [Tnewobject]: <k> newobject(L:LocalName, TypeId:ObjectType) => . ...</k>
        <mem> Mem => Mem [ Addr <- object(TypeId, true, makeList(1, uninit), .Map, heap) ] </mem>
        <nextId> Addr => Addr +Int 1 </nextId>
        <local2Base>
            Local2Base => Local2Base [ L <- Addr ]
        </local2Base>

    rule [Tmakemap]: <k> makemap(L, MType:MapType) => . ...</k>
        <mem>... .Map => 
        Addr |-> object(header(MType), true, makeList(1, Addr +Int 1), .Map, heap)
        Addr +Int 1 |-> object((MType), false, .List, .Map, heap)
        ...
        </mem>
        <nextId> Addr => Addr +Int 2</nextId>
        <local2Base>
            Local2Base => Local2Base [L <- Addr]
        </local2Base>
    
    rule [TmapassignExist]: <k> mapassign(Dst:LocalName, Hmap:LocalName, Key:ValueRef) => addrMapInsert(Dst, findValAddr (Key, deref(Hmap))) ...</k> requires isKeyInMap(Key, deref(Hmap))

    rule [TmapassignNotExist]: <k> mapassign(Dst:LocalName, Hmap:LocalName, Key:ValueRef) => newobject (Dst, unknown) ~> updateRefInMap(deref(Hmap), Dst, Key) ...</k> 
    [owise]


endmodule
