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
