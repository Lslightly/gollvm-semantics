requires "gollvm-syntax.k"
requires "gollvm-configuration.k"
requires "gollvm-dynamic-syntax.k"

module GOLLVM-CALL-SYNTAX
    imports GOLLVM-SYNTAX
    imports GOLLVM-DYNAMIC-SYNTAX
    //  LocalName = call Type GlobalName(ParamList)
    syntax KItem ::= NonVoidGlobalCall(LocalName, Type, GlobalName, ParamList)

    //  call void GlobalName(ParamList)
    syntax KItem ::= VoidGlobalCall(GlobalName, ParamList)
endmodule

module CALL-PREPROCESS
    imports GOLLVM-CALL-SYNTAX
    imports GOLLVM-CONFIGURATION
    rule [nonvoidglobalcall]: <k> execInst (
            LocalV:LocalName = 
            call _:OptCallingConv _:RetAttrs RetType:Type 
            Fn:GlobalName
            (Params:ParamList)
            _:FuncAttrs _:InstructionMetadatas)
    => 
    NonVoidGlobalCall (LocalV, RetType, Fn, Params) ...</k>
endmodule

module GOLLVM-RUNTIME-SYNTAX
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
    // imports ARRAY
    imports INT
    imports BOOL
    // rule <k> newobject(L:LocalName, TypeId) => . ...</k>
    //     <mem> Mem => Mem [ Base <- object(TypeId, 1, makeArray (1, uninit), false) ] </mem>
    //     <nextId> Base => Base +Int 1</nextId>
    //     <local2Base>
    //         Local2Base => Local2Base [ L <- Base ]
    //     </local2Base>

endmodule

//  for function call
module GOLLVM-CALL
    imports CALL-PREPROCESS
    imports GOLLVM-CALL-SYNTAX
    imports GOLLVM-RUNTIME
endmodule