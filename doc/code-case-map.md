# 代码与用例映射

K定义代码与相关LLVM IR用例映射关系的说明

指令、函数对应的规则所处位置见[README](../src/README.md)说明

## 指令

[Tbitcast](../src/gollvm-dyn-insts.k#L53)和[min_level.ll#L655](../test/llvmIR/min_level/min_level.ll#L655)

[Ticmpeq](../src/gollvm-dyn-insts.k#L55)和[min_level.ll#L663](../test/llvmIR/min_level/min_level.ll#L663)

[Ticmpeqnull1](../src/gollvm-dyn-insts.k#L59)和[min_level.ll#L687](gollvm-semantic/test/llvmIR/min_level/min_level.ll#L687)

[Tptrtoint](gollvm-semantic/src/gollvm-dyn-insts.k#L96)和[min_level.ll#L675](gollvm-semantic/test/llvmIR/min_level/min_level.ll#L675)

[TloadWriteBarrier](gollvm-semantic/src/gollvm-dyn-insts.k#L98)和[min_level.ll#L662](gollvm-semantic/test/llvmIR/min_level/min_level.ll#L662)

[Tload](gollvm-semantic/src/gollvm-dyn-insts.k#L100)和[min_level.ll#L693](gollvm-semantic/test/llvmIR/min_level/min_level.ll#L693)

[Tloadprim](gollvm-semantic/src/gollvm-dyn-insts.k#L108)和[min_level.ll#L706](gollvm-semantic/test/llvmIR/min_level/min_level.ll#L706)

[Tphi](gollvm-semantic/src/gollvm-dyn-insts.k#L117)和[min_level.ll#L685](gollvm-semantic/test/llvmIR/min_level/min_level.ll#L685)

[TstoreLocalNameAddr](gollvm-semantic/src/gollvm-dyn-insts.k#L143)和[min_level.ll#L681)](gollvm-semantic/test/llvmIR/min_level/min_level.ll#L681)

[TstoreLocalNameNonAddr](gollvm-semantic/src/gollvm-dyn-insts.k#L147)和[min_level.ll#L681](gollvm-semantic/test/llvmIR/min_level/min_level.ll#L681)

[TstoreConst](gollvm-semantic/src/gollvm-dyn-insts.k#L147)和[min_level.ll#L657](gollvm-semantic/test/llvmIR/min_level/min_level.ll#L657)

[Talloc](gollvm-semantic/src/gollvm-dyn-insts.k#L157)和[preprocessed.disable_llvm_passes_slice_no_escape.ll#L135](gollvm-semantic/test/llvmIR/slice_no_escape/preprocessed.disable_llvm_passes_slice_no_escape.ll#L135)

[Tgep](gollvm-semantic/src/gollvm-dyn-insts.k#L169)和[preprocessed.disable_llvm_passes_slice_no_escape.ll#L154](gollvm-semantic/test/llvmIR/slice_no_escape/preprocessed.disable_llvm_passes_slice_no_escape.ll#L154)

[TgepNonZero](gollvm-semantic/src/gollvm-dyn-insts.k#L176)和[preprocessed.disable_llvm_passes_slice_no_escape.ll#L229](gollvm-semantic/test/llvmIR/slice_no_escape/preprocessed.disable_llvm_passes_slice_no_escape.ll#L229)

[Tzexttrue](gollvm-semantic/src/gollvm-dyn-insts.k#L183)和[preprocessed.disable_llvm_passes_slice_no_escape.ll#L239](gollvm-semantic/test/llvmIR/slice_no_escape/preprocessed.disable_llvm_passes_slice_no_escape.ll#L239)

[Tand](gollvm-semantic/src/gollvm-dyn-insts.k#L192)和[preprocessed.disable_llvm_passes_slice_no_escape.ll#L240](gollvm-semantic/test/llvmIR/slice_no_escape/preprocessed.disable_llvm_passes_slice_no_escape.ll#L240)

[Tadd](gollvm-semantic/src/gollvm-dyn-insts.k#L199)和[preprocessed.disable_llvm_passes_slice_no_escape.ll#L188](gollvm-semantic/test/llvmIR/slice_no_escape/preprocessed.disable_llvm_passes_slice_no_escape.ll#L188)

[Tsub](gollvm-semantic/src/gollvm-dyn-insts.k#L206)和[preprocessed.disable_llvm_passes_slice_no_escape.ll#L266](gollvm-semantic/test/llvmIR/slice_no_escape/preprocessed.disable_llvm_passes_slice_no_escape.ll#L266)

[Ttrunc](gollvm-semantic/src/gollvm-dyn-insts.k#L213)和[preprocessed.disable_llvm_passes_slice_no_escape.ll#L252](gollvm-semantic/test/llvmIR/slice_no_escape/preprocessed.disable_llvm_passes_slice_no_escape.ll#L252)

## 运行时函数

[Tnewobject](gollvm-semantic/src/gollvm-runtime.k#L58)和[min_level.ll#L667](gollvm-semantic/test/llvmIR/min_level/min_level.ll#L667)

[Tmakemap](gollvm-semantic/src/gollvm-runtime.k#L65)和[min_level.ll#L658](gollvm-semantic/test/llvmIR/min_level/min_level.ll#L658)

[TmapassignNotExist](gollvm-semantic/src/gollvm-runtime.k#L78)和[min_level.ll#L741](gollvm-semantic/test/llvmIR/min_level/min_level.ll#L741)

