requires "gollvm-syntax.k"
module GOLLVM-CONFIGURATION
    imports GOLLVM-SYNTAX
    imports LIST
    imports MAP
    syntax Entry ::= "CallMain" "(" ")"
    configuration
    <T>
        // $PGM is the static program to be parsed and CallMain is the entry of dynamic part.
        <k>$PGM:Module ~> CallMain() </k>
        <static>
            <module>    //  static info for a module
                <typedefs> .Map </typedefs>
                <globalRegisters> .Map </globalRegisters>
            </module>
            <functions> //  static info for functions in a module
                <function multiplicity="*" type="Map">
                    <functionName> .K </functionName>
                    <retType> .K </retType>
                    <params> .K </params>
                    <startBlock> .K </startBlock>
                    <basicBlocks>
                        <basicBlock multiplicity="*" type="Map">
                            // LabelString
                            <blockName> .K </blockName>
                            // List(Instruction)
                            <instructions> .List </instructions>
                            // BBTerminatorInstruction
                            <termInst> .K </termInst>
                        </basicBlock>
                    </basicBlocks>
                </function>
            </functions>
        </static>
        <dynamic>
            <control>
                <currFunc> .K </currFunc>
                <currBlock> .K </currBlock>
                <currInst> .K </currInst>
                <instList> .List </instList>
            </control>
            <mem>   //  Base to object
                .Map
            </mem>
            <nextId> 0 </nextId>    //  number less than nextId is valid address.
            <local2Base>    //  local value to base
                .Map
            </local2Base>
        </dynamic>
        <warnings> .List </warnings>
        <errors> .List </errors>
    </T>
endmodule