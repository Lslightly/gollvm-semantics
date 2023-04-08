requires "gollvm-syntax.k"
module GOLLVM-CONFIGURATION
    imports GOLLVM-SYNTAX
    imports LIST
    imports MAP
    /*
        k表示程序
        module, functions, basic
        val2heap表示Value -> Heap位置的映射
        val2stack表示Value -> Stack位置的映射
        val2type表示Value -> Type的映射
        fstack为活动记录栈
    */
    syntax Entry ::= "CallMain" "(" ")"
    configuration
    <T>
        <k>$PGM:Module ~> CallMain() </k>
        <module>    //  static info for a module
            <typedefs> .Map </typedefs>
            <globalRegisters> .Map </globalRegisters>
        </module>
        <functions> //  static info for functions in a module
            <function multiplicity="*" type="Map">
                <functionName> .K </functionName>
                <retType> .K </retType>
                <params> .K </params>
                <basicBlocks>
                    <basicBlock multiplicity="*" type="Map">
                        <blockName> .K </blockName>
                        <instructions> .List </instructions>
                        <termInst> .K </termInst>
                    </basicBlock>
                </basicBlocks>
            </function>
        </functions>
        <control>
            <currBlock> .K </currBlock>
            <currInst> .K </currInst>
            <val2mem> .Map </val2mem>
        </control>
        <mem>
            .K
        </mem>
        <callStack color="Goldenrod"> .List </callStack>
    </T>
endmodule