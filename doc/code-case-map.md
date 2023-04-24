# 代码与用例映射

K定义代码与相关LLVM IR用例映射关系的说明

指令、函数对应的规则所处位置见[README](../src/README.md)说明

## 指令

[Tbitcast](../src/gollvm-dyn-insts.k#L53)和[min_level.ll#L655](../test/llvmIR/min_level/min_level.ll#L655)

[Ticmpeq](../src/gollvm-dyn-insts.k#L55)和[min_level.ll#L663](../test/llvmIR/min_level/min_level.ll#L663)

[Ticmpeqnull1](../src/gollvm-dyn-insts.k#L59)和[min_level.ll#L687](../test/llvmIR/min_level/min_level.ll#L687)

[Tptrtoint](../src/gollvm-dyn-insts.k#L96)和[min_level.ll#L675](../test/llvmIR/min_level/min_level.ll#L675)

[TloadWriteBarrier](../src/gollvm-dyn-insts.k#L98)和[min_level.ll#L662](../test/llvmIR/min_level/min_level.ll#L662)

[Tload](../src/gollvm-dyn-insts.k#L100)和[min_level.ll#L693](../test/llvmIR/min_level/min_level.ll#L693)

[Tloadprim](../src/gollvm-dyn-insts.k#L108)和[min_level.ll#L706](../test/llvmIR/min_level/min_level.ll#L706)

[Tphi](../src/gollvm-dyn-insts.k#L117)和[min_level.ll#L685](../test/llvmIR/min_level/min_level.ll#L685)

[TstoreLocalNameAddr](../src/gollvm-dyn-insts.k#L143)和[min_level.ll#L681)](../test/llvmIR/min_level/min_level.ll#L681)

[TstoreLocalNameNonAddr](../src/gollvm-dyn-insts.k#L147)和[min_level.ll#L681](../test/llvmIR/min_level/min_level.ll#L681)

[TstoreConst](../src/gollvm-dyn-insts.k#L147)和[min_level.ll#L657](../test/llvmIR/min_level/min_level.ll#L657)

[Talloc](../src/gollvm-dyn-insts.k#L157)和[preprocessed.disable_llvm_passes_slice_no_escape.ll#L135](../test/llvmIR/slice_no_escape/preprocessed.disable_llvm_passes_slice_no_escape.ll#L135)

[Tgep](../src/gollvm-dyn-insts.k#L169)和[preprocessed.disable_llvm_passes_slice_no_escape.ll#L154](../test/llvmIR/slice_no_escape/preprocessed.disable_llvm_passes_slice_no_escape.ll#L154)

[TgepNonZero](../src/gollvm-dyn-insts.k#L176)和[preprocessed.disable_llvm_passes_slice_no_escape.ll#L229](../test/llvmIR/slice_no_escape/preprocessed.disable_llvm_passes_slice_no_escape.ll#L229)

[Tzexttrue](../src/gollvm-dyn-insts.k#L183)和[preprocessed.disable_llvm_passes_slice_no_escape.ll#L239](../test/llvmIR/slice_no_escape/preprocessed.disable_llvm_passes_slice_no_escape.ll#L239)

[Tand](../src/gollvm-dyn-insts.k#L192)和[preprocessed.disable_llvm_passes_slice_no_escape.ll#L240](../test/llvmIR/slice_no_escape/preprocessed.disable_llvm_passes_slice_no_escape.ll#L240)

[Tadd](../src/gollvm-dyn-insts.k#L199)和[preprocessed.disable_llvm_passes_slice_no_escape.ll#L188](../test/llvmIR/slice_no_escape/preprocessed.disable_llvm_passes_slice_no_escape.ll#L188)

[Tsub](../src/gollvm-dyn-insts.k#L206)和[preprocessed.disable_llvm_passes_slice_no_escape.ll#L266](../test/llvmIR/slice_no_escape/preprocessed.disable_llvm_passes_slice_no_escape.ll#L266)

[Ttrunc](../src/gollvm-dyn-insts.k#L213)和[preprocessed.disable_llvm_passes_slice_no_escape.ll#L252](../test/llvmIR/slice_no_escape/preprocessed.disable_llvm_passes_slice_no_escape.ll#L252)

## 运行时函数

[Tnewobject](../src/gollvm-runtime.k#L58)和[min_level.ll#L667](../test/llvmIR/min_level/min_level.ll#L667)

[Tmakemap](../src/gollvm-runtime.k#L65)和[min_level.ll#L658](../test/llvmIR/min_level/min_level.ll#L658)

[TmapassignNotExist](../src/gollvm-runtime.k#L78)和[min_level.ll#L741](../test/llvmIR/min_level/min_level.ll#L741)

