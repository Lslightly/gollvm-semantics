requires "gollvm-syntax.k"
requires "gollvm-configuration.k"
requires "gollvm-dynamic-syntax.k"
requires "gollvm-dyn-insts.k"
requires "gollvm-syntax-helper.k"
requires "gollvm-mem.k"


/*
    动态语义部分的控制流执行基本框架
*/
module GOLLVM-DYNAMIC
    imports GOLLVM-SYNTAX
    imports GOLLVM-CONFIGURATION
    imports GOLLVM-DYNAMIC-SYNTAX
    imports GOLLVM-DYN-INSTS
    imports GOLLVM-SYNTAX-HELPER
    imports GOLLVM-MEM-SYNTAX
    imports K-EQUAL
    imports SET

    //  start executing @main.main
    rule [start]: <k> CallMain() => shorterLifeTime() ~> evalFunc(@main.main) ~> longerLifeTime() ...</k>
        // <function>
        //     <functionName> Fn </functionName>
        //     ...
        // </function>
        // requires Fn ==K @main.main

    //  loading entry block
    rule [func]: <k> evalFunc(Fn:GlobalName) => evalBlock(StartBlockName) ...</k>
        <function>
            ...
            <functionName> Fn </functionName>
            <startBlock> StartBlockName </startBlock>
            ...
        </function>
        <control>
            <currFunc> _ => Fn </currFunc>
            ...
        </control>
    
    //  loading instruction list
    rule [instlist]: <k> evalBlock(BB) => evalInsts(InstList) ~> evalTermInst (TermInst) ... </k>
         <static>
            <function>
                <functionName> Fn </functionName>
                <basicBlock>
                    <blockName> BB </blockName>
                    <instructions> InstList </instructions>
                    <termInst> TermInst </termInst>
                    ...
                </basicBlock>
                ...
            </function>
            ...
         </static>
         <control>
            <currFunc> Fn </currFunc>
            <currBlock> _ => BB </currBlock>
            <instList> _ => InstList </instList>
            ...
         </control>
    
    //  split instruction list
    rule <k> evalInsts(ListItem(I:Instruction) L:List) => execInst (I) ~> evalInsts(L) ...</k>
        <currInst> _ => I </currInst>
    rule <k> evalInsts (.List) => . ...</k>

    rule [[ currBase() => Base ]]
        <nextId> Base:Int </nextId>

    rule [[ getLastBlock() => LastBlock ]]
        <lastBlock> LastBlock:LabelString </lastBlock>

    rule [[ getCurrInst () => I ]]
        <currInst> I:Instruction </currInst>

    rule [[ isDefineFunction(Fn:GlobalName) => true ]]
        <functionName> Fn </functionName>
    rule isDefineFunction(_:GlobalName) => false [owise]

    rule [[ getParams(Fn:GlobalName) => Params ]]
    <functionName> Fn </functionName>
    <params> Params:ArgList </params>

    rule [[ getLastFrameLocal2Base() => Local2Base ]]
    <callStack> _:List ListItem(frame(Local2Base:Map, _:Map, _:Map)) .List</callStack>
    rule [[ getLastFrameLocal2prim() => Local2prim ]]
    <callStack> _:List ListItem(frame(_:Map, Local2prim:Map, _:Map)) .List </callStack>
    rule [[ getLastFrameStackAllocs() => StackAllocs ]]
    <callStack> _:List ListItem(frame(_:Map, _:Map, StackAllocs:Map)) .List </callStack>
    rule inLastFrameLocal2Base(LV:LocalName) => LV in_keys(getLastFrameLocal2Base())
    rule inLastFrameLocal2prim(LV:LocalName) => LV in_keys(getLastFrameLocal2prim())
    rule getLastFrameBaseOffsetOf(LV:LocalName) => {getLastFrameLocal2Base() [ LV ]}:>BaseOffset requires inLastFrameLocal2Base(LV)
    rule getLastFramePrimOf(LV:LocalName) => {getLastFrameLocal2prim() [ LV ]}:>Content requires inLastFrameLocal2prim(LV)

    rule <k>
        storeStackState() => .
    ... </k>
    <local2Base> AddrMap:Map => .Map </local2Base>
    <local2prim> PrimMap:Map => .Map </local2prim>
    <stackAllocs> StackObjBases:Map => .Map </stackAllocs>
    <callStack> ... .List => ListItem(frame(AddrMap, PrimMap, StackObjBases))</callStack>

    rule <k>
        restoreStackState() => .
    ... </k>
    <local2Base> _ => AddrMap </local2Base>
    <local2prim> _ => PrimMap </local2prim>
    <stackAllocs> _ => StackObjBases </stackAllocs>
    <callStack> ... ListItem(frame(AddrMap:Map, PrimMap:Map, StackObjBases:Map)) .List => .List</callStack>

    rule <k>
        shorterLifeTime() => .
    ... </k>
    <lifeTime> Life:Int => Life +Int 1 </lifeTime>
    rule <k>
        longerLifeTime() => .
    ... </k>
    <lifeTime> Life:Int => Life -Int 1 </lifeTime>

    rule <k>
        mapArgsToParams(
            _:Type _:ParamAttrs V:ValueRef , Args:ParamList,
            _:Type _:ParamAttrs Param:LocalVar , Params:ArgList)
    =>
        mapArgToParam(V, Param) ~> mapArgsToParams(Args, Params)
    ... </k>

    rule <k>
        mapArgsToParams (.ParamList, .ArgList) => .
    ... </k>

    rule <k>
        mapArgToParam(undef, Param:LocalVar)
    =>
        updatePrim(Param, uninit)
    ... </k>
    rule <k>
        mapArgToParam(Arg:LocalName, Param:LocalVar)
    =>
        updatePrim(Param, getLastFramePrimOf(Arg))
    ... </k>
        requires inLastFrameLocal2prim(Arg)
    rule <k>
        mapArgToParam(Arg:LocalName, Param:LocalVar)
    =>
        addrMapInsert(Param, getLastFrameBaseOffsetOf(Arg))
    ... </k>
        requires inLastFrameLocal2Base(Arg)

    rule <k>
        storeReturnV (V:KItem) => .
    ... </k>
    <retValue> _ => V </retValue>

    rule [[ getReturnV() => V ]]
    <retValue> V </retValue>

    rule <k>
        mapReturnToReceiver(Ret:LocalName)
    =>
        updatePrim(Ret, getReturnV())
    ... </k>
        requires isNonAddrSort(getReturnV())

    rule <k>
        mapReturnToReceiver(Ret:LocalName)
    =>
        addrMapInsert(Ret, {getReturnV()}:>BaseOffset)
    ... </k>
        requires notBool isNonAddrSort(getReturnV())


// type assertion
    rule isIntSort(_:Int) => true
    rule isIntSort(_) => false [owise]
    rule isTypeSort(_:Type) => true
    rule isTypeSort (_) => false [owise]

    rule castPrim (V:LocalName) => lookUpPrim(V) requires toPrimCastable(V)
    rule castPrim (V) => V [owise]
    rule toPrimCastable(V:LocalName) => isPrim(V)
    rule toPrimCastable(_:ValueRef) => true [owise]

    rule castIntPrim(V:LocalName) => {lookUpPrim(V)}:>Int requires toIntCastable(V)
    rule castIntPrim(V:Int) => V
    rule [TtoIntCastable]: toIntCastable (V:LocalName) => isIntSort(lookUpPrim(V)) requires isPrim(V)
    rule toIntCastable (_:Int) => true
    rule toIntCastable (_) => false [owise]
endmodule