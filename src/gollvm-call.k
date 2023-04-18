requires "gollvm-syntax.k"
requires "gollvm-configuration.k"
requires "gollvm-dynamic-syntax.k"
requires "gollvm-runtime.k"

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

    rule [voidglobalcall]: <k>
    execInst (call _:OptCallingConv _:RetAttrs void Fn:GlobalName(Params:ParamList) _:FuncAttrs _:InstructionMetadatas)
    =>
    VoidGlobalCall (Fn, Params) ...
    </k>
endmodule

//  for function call
module GOLLVM-CALL
    imports CALL-PREPROCESS
    imports GOLLVM-CALL-SYNTAX
    imports GOLLVM-RUNTIME

    rule <k> VoidGlobalCall (_:GlobalName, _:ParamList) #as Call => . ...</k>
        <errors> ... .List => ListItem(error(Call, "not modeled")) </errors> [owise]
    rule <k> NonVoidGlobalCall(_:LocalName, _:Type, _:GlobalName, _:ParamList) #as Call => . ...</k>
        <errors> ... .List => ListItem(error(Call, "not modeled")) </errors> [owise]

endmodule