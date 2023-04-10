requires "gollvm-syntax.k"
requires "gollvm-configuration.k"
requires "gollvm-dynamic-syntax.k"
requires "gollvm-dyn-insts.k"


module GOLLVM-DYNAMIC
    imports GOLLVM-SYNTAX
    imports GOLLVM-CONFIGURATION
    imports GOLLVM-DYNAMIC-SYNTAX
    imports GOLLVM-DYN-INSTS
    imports K-EQUAL

    //  start executing @main.main
    rule <k> CallMain() => evalFunc(@main.main) ...</k>
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
    rule [instlist]: <k> evalBlock(BB) => evalInsts(InstList) ~> evalTermInst (TermInst) </k>
         <static>
            <function>
                <functionName> Fn </functionName>
                <basicBlock>
                    <blockName> BB </blockName>
                    <instructions> InstList </instructions>
                    <termInst> TermInst </termInst>
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

endmodule