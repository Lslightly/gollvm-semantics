requires "gollvm-syntax.k"
requires "gollvm-configuration.k"
requires "constant.k"

module GOLLVM-STATIC-SYNTAX
    imports GOLLVM-SYNTAX
    imports MAP
    syntax KItem ::= startBlock(GlobalName, BasicBlock)
    syntax KItem ::= fn2Blocks(GlobalName, BasicBlockList)
    syntax KItem ::= fnBlock(GlobalName, BasicBlock)
    syntax KItem ::= fnBlock2Insts(GlobalName, LabelString, InstructionList)
    syntax KItem ::= fnBlockInst(GlobalName, LabelString, Instruction)
    syntax Map ::= collectPhis(PHIList) [function]
endmodule


module GOLLVM-STATIC
    imports GOLLVM-STATIC-SYNTAX
    imports GOLLVM-SYNTAX
    imports GOLLVM-CONFIGURATION
    imports CONSTANT

    //  type descriptor definition begin with constant
    rule <k>
        GlobalV:GlobalName =
        _:NonExternalLinkage _:OptVisibilityStyle _:OptDllStorageClass _:OptThreadLocal _:OptAddrSpace _:OptUnnamedAddr _:OptExternallyInitialized
        constant _:Type C:ConstValueRef
        _:OptSectionComdatAndAlign
    =>
        . ...</k>
    <globalRegisters>
        MAP => MAP [ GlobalV <- newConst(C)]
    </globalRegisters>

    //  function definition
    rule <k> define _:FunctionPrefix _:FunctionHeaderPrefix T:Type Name:GlobalName ( Params:ArgList ) _:FunctionHeaderSuffix { StartBlock:BasicBlock Blocks:BasicBlockList }
    =>
    startBlock(Name, StartBlock) ~> fn2Blocks (Name, StartBlock Blocks) ... </k>
        <functions>
            (
                .Bag => <function>
                            <functionName> Name </functionName>
                            <retType> T </retType>
                            <params> Params </params>
                            ...
                        </function>
            ) ...
        </functions>
    //  start block
    rule <k> startBlock (Name, L:LabelString : _:InstructionList _:BBTerminatorInstruction) => . ...</k>
        <function>
            <functionName> Name </functionName>
            <startBlock> _ => L </startBlock>
            ...
        </function>
    rule <k> startBlock (Name, _:InstructionList _:BBTerminatorInstruction) => . ...</k>
        <function>
            <functionName> Name </functionName>
            <startBlock> _ => "entry" </startBlock>
            ...
        </function>

    //  block list split
    rule <k> fn2Blocks(Name:GlobalName, BB:BasicBlock BBs:BasicBlockList) => fnBlock (Name, BB) ~> fn2Blocks(Name, BBs) ...</k>
    rule <k> fn2Blocks (_:GlobalName, .BasicBlockList) => . ...</k>

    //  block definition
    rule <k> fnBlock(Name:GlobalName, L:LabelString : Is:InstructionList TermInst:BBTerminatorInstruction) => fnBlock2Insts(Name, L, Is) ...</k>
        <function>
            ...
            <functionName> Name </functionName>
            <basicBlocks>
            (
                .Bag => <basicBlock>
                            <blockName>L</blockName>
                            <termInst> TermInst </termInst>
                            <instructions> .List </instructions>
                            ...
                        </basicBlock>
            )
            ...
            </basicBlocks>
        </function>
    rule <k> fnBlock (Name:GlobalName, Is:InstructionList TermInst:BBTerminatorInstruction) => fnBlock2Insts(Name, "entry", Is) ...</k>
        <function>
            ...
            <functionName>Name</functionName>
            <basicBlocks>
            (
                .Bag => <basicBlock>
                            <blockName> "entry" </blockName>
                            <termInst> TermInst </termInst>
                            <instructions> .List </instructions>
                            ...
                        </basicBlock>
            )
            ...
            </basicBlocks>
        </function>

    // instruction split
    rule <k> fnBlock2Insts (Name:GlobalName, L:LabelString, I:Instruction Is:InstructionList) 
    => fnBlockInst (Name, L, I) ~> fnBlock2Insts (Name, L:LabelString, Is:InstructionList) ...</k>
    rule <k> fnBlock2Insts (_:GlobalName, _:LabelString, .InstructionList) => . ...</k>

    // phi inst
    rule <k> fnBlockInst(Name, L, Local:LocalName = phi T:Type Pairs:PHIList Meta:InstructionMetadatas) => . ...</k>
        <function>
            ...
            <functionName> Name </functionName>
            <basicBlocks>
                ...
                <basicBlock>
                    <blockName>L</blockName>
                    <instructions> ... .List => ListItem(Local = phi T Pairs Meta)</instructions>
                    <phiMap> MAP => MAP [ Local <- collectPhis(Pairs) ]</phiMap>
                    ...
                </basicBlock>
            </basicBlocks>
            ...
        </function>
    
    // add phi pairs
    rule collectPhis([ SrcV:ValueRef , SrcL:LabelString], Remain:PHIList) => collectPhis(Remain) [SrcL <- SrcV]
    rule collectPhis(.PHIList) => .Map

    // instruction definition
    rule <k> fnBlockInst (Name, L, I:Instruction) => . ...</k>
        <function>
            ...
            <functionName> Name </functionName>
            <basicBlocks>
                ...
                <basicBlock>
                    <blockName>L</blockName>
                    <instructions> ... .List => ListItem(I)</instructions>
                    ...
                </basicBlock>
            </basicBlocks>
            ...
        </function> [owise]

    rule <k> D:Definition M:Module => D ~> M ...</k>
    rule <k> _:Definition => . ...</k> [owise]
    rule <k> .Module => . ...</k>

endmodule