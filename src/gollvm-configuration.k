requires "gollvm-syntax.k"
module GOLLVM-CONFIGURATION
    imports GOLLVM-SYNTAX-FOR-CONFIGURATION
    imports INT
    imports LIST
    imports MAP
    syntax Entry ::= "CallMain" "(" ")"
    configuration
    <T>
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
                            /* Dst = phi [SrcV:ValueRef, SrcB:LabelString]
                                PhiMap: Dst |-> LabelString |-> SrcV
                            */
                            <phiMap> .Map </phiMap>
                        </basicBlock>
                    </basicBlocks>
                </function>
            </functions>
        </static>
        // $PGM is the static program to be parsed and CallMain is the entry of dynamic part.
        <dynamic>
            <control>
                <currFunc> .K </currFunc>
                <lastBlock> .K </lastBlock>
                <currBlock> .K </currBlock>
                <currInst> .K </currInst>
                <instList> .List </instList>
            </control>
            <mem>   //  Addr to object
                .Map
            </mem>
            <nextId> 0 </nextId>    //  number less than nextId is valid address.
            <local2Base>    //  local value to base addr
                .Map
            </local2Base>
            <local2prim>    //  local value to primitive value
                .Map
            </local2prim>
            <callStack> .List </callStack>  //  store stack frames including local2Base, local2prim
            <stackAllocs> .Map </stackAllocs>   //  store current stack alloc objects' bases
            <lifeTime> 0 </lifeTime>    // lifeTime for stack
            <retValue> .K </retValue> // return value
        </dynamic>
        <warnings> .List </warnings>
        <errors> .List </errors>
        <k>$PGM:Module ~> CallMain() </k>
    </T>

    // // for test
    // configuration
    // <T>
    //     <static>
    //         <module>    //  static info for a module
    //             <typedefs> .Map </typedefs>
    //             <globalRegisters> .Map </globalRegisters>
    //         </module>
    //         <functions> //  static info for functions in a module
    //             <function multiplicity="*" type="Map">
    //                 <functionName> .K </functionName>
    //                 <retType> .K </retType>
    //                 <params> .K </params>
    //                 <startBlock> .K </startBlock>
    //                 <basicBlocks>
    //                     <basicBlock multiplicity="*" type="Map">
    //                         // LabelString
    //                         <blockName> .K </blockName>
    //                         // List(Instruction)
    //                         <instructions> .List </instructions>
    //                         // BBTerminatorInstruction
    //                         <termInst> .K </termInst>
    //                         /* Dst = phi [SrcV:ValueRef, SrcB:LabelString]
    //                             PhiMap: Dst |-> LabelString |-> SrcV
    //                         */
    //                         <phiMap> .Map </phiMap>
    //                     </basicBlock>
    //                 </basicBlocks>
    //             </function>
    //         </functions>
    //     </static>
    //     <k>$PGM</k>
    //     <dynamic>
    //         <control>
    //             <currFunc> .K </currFunc>
    //             <lastBlock> .K </lastBlock>
    //             <currBlock> .K </currBlock>
    //             <currInst> .K </currInst>
    //             <instList> .List </instList>
    //         </control>
    //         <mem>   //  Addr to object
    //             .Map
    //         </mem>
    //         <nextId> 0 </nextId>    //  number less than nextId is valid address.
    //         <local2Base>    //  local value to base addr
    //             .Map
    //         </local2Base>
    //         <local2prim>    //  local value to primitive value
    //             .Map
    //         </local2prim>
    //     </dynamic>
    //     <warnings> .List </warnings>
    //     <errors> .List </errors>
    // </T>
endmodule