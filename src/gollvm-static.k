requires "gollvm-syntax.k"
requires "gollvm-configuration.k"

module GOLLVM-STATIC-SYNTAX
    imports GOLLVM-SYNTAX
    syntax KItem ::= fn2Blocks(GlobalName, BasicBlockList)
    syntax KItem ::= fnBlock(GlobalName, BasicBlock)
    syntax KItem ::= fnBlock2Insts(GlobalName, LabelString, InstructionList)
    syntax KItem ::= fnBlockInst(GlobalName, LabelString, Instruction)
endmodule


module GOLLVM-STATIC
    imports GOLLVM-STATIC-SYNTAX
    imports GOLLVM-SYNTAX
    imports GOLLVM-CONFIGURATION

    //  function definition
    rule <k> define _:FunctionPrefix _:FunctionHeaderPrefix T:Type Name:GlobalName ( Params:ArgList ) _:FunctionHeaderSuffix { Blocks:BasicBlockList } => fn2Blocks (Name, Blocks) ... </k>
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
                        </basicBlock>
            )
            ...
            </basicBlocks>
        </function>

    // instruction split
    rule <k> fnBlock2Insts (Name:GlobalName, L:LabelString, I:Instruction Is:InstructionList) 
    => fnBlockInst (Name, L, I) ~> fnBlock2Insts (Name, L:LabelString, Is:InstructionList) ...</k>
    rule <k> fnBlock2Insts (_:GlobalName, _:LabelString, .InstructionList) => . ...</k>

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
        </function>

    rule <k> D:Definition M:Module => D ~> M ...</k>
    rule <k> _:Definition => . ...</k> [owise]
    rule <k> .Module => . ...</k>

endmodule