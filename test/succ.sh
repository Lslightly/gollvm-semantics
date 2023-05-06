#!/bin/bash -x

# llvm ir
llvmIRtest=(min_level/preprocessed.min_level.ll slice/preprocessed.no_escape_slice.ll slice/preprocessed.slice.ll slice_no_escape/preprocessed.disable_llvm_passes_slice_no_escape.ll iface_convert/preprocessed.iface_convert.ll iface_convert/preprocessed.no_escape_iface_convert.ll ifaceEITp/preprocessed.ifaceEITp.ll)

for file in ${llvmIRtest[@]}
do
    krun llvmIR/$file --definition ../src/gollvm-semantics-kompiled --statistics &> llvmIR/$file.log
    # echo $file
done