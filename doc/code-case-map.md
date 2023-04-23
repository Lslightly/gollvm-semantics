# 代码与用例映射

K定义代码与相关LLVM IR用例映射关系的说明

每个函数或者指令对应的规则均含标签`Txxxyyy`，其中`xxx`为函数名称/指令名称，`yyy`为后缀，包含该规则是`xxx`函数/指令下的特殊情况

计算指令规则在[gollvm-dyn-insts.k#L44 GOLLVM-NORMAL-INSTS模块](../src/gollvm-dyn-insts.k#L44)中

控制流指令规则在[gollvm-dyn-insts.k#L232 GOLLVM-TERM-INSTS模块](../src/gollvm-dyn-insts.k#L232)中

运行时函数的处理在[gollvm-runtime.k#L39 GOLLVM-RUNTIME模块](../src/gollvm-runtime.k#L39)中

