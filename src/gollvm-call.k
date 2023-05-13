requires "gollvm-syntax.k"
requires "gollvm-configuration.k"
requires "gollvm-dynamic-syntax.k"
requires "gollvm-runtime.k"

/*
    call指令的抽象语法结构
*/
module GOLLVM-CALL-SYNTAX
    imports GOLLVM-SYNTAX
    imports GOLLVM-DYNAMIC-SYNTAX
    //  LocalName = call Type GlobalName(ParamList)
    syntax KItem ::= NonVoidGlobalCall(LocalName, Type, GlobalName, ParamList)

    //  call void GlobalName(ParamList)
    syntax KItem ::= VoidGlobalCall(GlobalName, ParamList)

    //  invoke void call
    //  invoke fn args normal_label exception_label
    syntax KItem ::= VoidInvoke(SymbolicValueRef, ParamList, LabelString, LabelString)

endmodule

/*
    call指令预处理，将IR指令处理为抽象语法结构
*/
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

    rule [voidinvoke]: <k>
        evalTermInst(invoke _:OptCallingConv _:RetAttrs void Fn:SymbolicValueRef(Args:ParamList)_:FuncAttrs to label NormalLabel:LabelString unwind label ExceptionLabel:LabelString _:InstructionMetadatas)
    =>
        VoidInvoke(Fn, Args, NormalLabel, ExceptionLabel)
    ... </k>
endmodule

/*
    对call指令的处理
*/
module GOLLVM-CALL
    imports CALL-PREPROCESS
    imports GOLLVM-CALL-SYNTAX
    imports GOLLVM-RUNTIME

    //  未被处理的call指令当做error处理
    rule [TVoidGlobalCallUnModeled]: <k> VoidGlobalCall (_:GlobalName, _:ParamList) #as Call => . ...</k>
        <errors> ... .List => ListItem(error(Call, "not modeled")) </errors> [owise]

    rule [TVoidGlobalCall]:<k>
        VoidGlobalCall(
            Fn:GlobalName,
            Args:ParamList
        ) ~> Following
    =>
        storeStackState() ~> mapArgsToParams(Args, getParams(Fn)) ~> shorterLifeTime()
        ~> evalFunc(Fn) ~>
        longerLifeTime() ~> restoreStackState()
        ~> Following
    </k> requires isDefineFunction(Fn)

    rule [TNonVoidGlobalCallUnModeled]:<k> NonVoidGlobalCall(_:LocalName, _:Type, _:GlobalName, _:ParamList) #as Call => . ...</k>
        <errors> ... .List => ListItem(error(Call, "not modeled")) </errors> [owise]

    rule [TNonVoidGlobalCall]:<k>
        NonVoidGlobalCall(
            Ret:LocalName, _:Type,
            Fn:GlobalName,
            Args:ParamList
        ) ~> Following
    =>
        storeStackState() ~> mapArgsToParams(Args, getParams(Fn)) ~> shorterLifeTime()
        ~> evalFunc(Fn) ~> 
        longerLifeTime() ~> restoreStackState() ~> mapReturnToReceiver(Ret)
        ~> Following
    </k> requires isDefineFunction(Fn)

    rule [TVoidInvokeLocalName]: <k>
        VoidInvoke (L:LocalName, Args:ParamList, NormalLabel:LabelString, _:LabelString)
    =>
        VoidGlobalCall({lookUpPrim(L)}:>GlobalName, Args) ~> evalBlock(NormalLabel)
    ... </k>


endmodule