module GOLLVM-SEMANTICS

    /*
        k表示程序
        val2heap表示Value -> Heap位置的映射
        val2stack表示Value -> Stack位置的映射
        val2type表示Value -> Type的映射
        fstack为活动记录栈
    */
    configuration
    <T>
        <k>$PGM</k>
        <val2heap> .Map </val2heap>
        <val2stack> .Map </val2stack>
        <val2type> .Map </val2type>
        <fstack> .List </fstack>
    </T>

endmodule