# K-GoLLVM source code

K definition for LLVM IR of GoLLVM.

## code specification

```
gollvm-semantics.k  //  the driver file including all parts of definitions
gollvm-configuration.k  //  configuration of GoLLVM to model the semantics of GoLLVM memory operations
gollvm-syntax.k //  syntax of LLVM
gollvm-static.k //  to load all necessary static parts to GoLLVM to the static cell of configuration
gollvm-dynamic.k    //  the driver file for the dynamic part of semantics of GoLLVM's memory operations
gollvm-dynamic-syntax.k //  the syntax used in the dynamic part of semantics
gollvm-dyn-insts.k  //  the dynamic semantics of Instructions in GoLLVM
gollvm-call.k   //  the dynamic semantics of Call Instruction in GoLLVM
gollvm-runntime.k   //  the dynamic semantics of Runtime Function Call Instructions, which are specialized Call Instruction
```

每个函数或者指令对应的规则均含标签`Txxxyyy`，其中`xxx`为函数名称/指令名称，`yyy`为后缀，包含该规则是`xxx`函数/指令下的特殊情况

计算指令规则在[gollvm-dyn-insts.k#L44 GOLLVM-NORMAL-INSTS模块](../src/gollvm-dyn-insts.k#L44)中

控制流指令规则在[gollvm-dyn-insts.k#L232 GOLLVM-TERM-INSTS模块](../src/gollvm-dyn-insts.k#L232)中

运行时函数的处理在[gollvm-runtime.k#L39 GOLLVM-RUNTIME模块](../src/gollvm-runtime.k#L39)中

