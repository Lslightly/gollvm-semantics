#!/bin/bash -x

# llvm ir
llvmIRtest=(min_level/preprocessed.min_level.ll slice/preprocessed.no_escape_slice.ll slice/preprocessed.slice.ll slice_no_escape/preprocessed.disable_llvm_passes_slice_no_escape.ll iface_convert/preprocessed.iface_convert.ll iface_convert/preprocessed.no_escape_iface_convert.ll ifaceEITp/preprocessed.ifaceEITp.ll issue44614/preprocessed.issue44614.ll issue54247/preprocessed.issue54247.ll issue54247/preprocessed.no_escape_issue54247.ll)

# for file in ${llvmIRtest[@]}
# do
#     cp llvmIR/$file.log old
#     krun llvmIR/$file --definition ../src/gollvm-semantics-kompiled --statistics &> llvmIR/$file.log
#     diff old llvmIR/$file.log > llvmIR/$file.diff
#     # echo $file
# done

# echo "-----------------\
# negative"

# negative
negativeTest=(min_level/preprocessed.min_level.ll issue44614/preprocessed.issue44614.ll slice/preprocessed.slice.ll stack2stack/preprocessed.stack2stack.ll issue54247/preprocessed.no_escape_issue54247.ll deferprocHeapAssertion/preprocessed.deferprocHeapAssertion.ll)

# for file in ${negativeTest[@]}
# do
#     cp negative/$file.log old
#     krun negative/$file --definition ../src/gollvm-semantics-kompiled --statistics &> negative/$file.log
#     diff old negative/$file.log > negative/$file.diff
# done

# $1 array[@]
# $2 Prefix
diffTest() {
    arr=$1
    for file in ${arr[*]}
    do
        cp $2/$file.log $2/$file.old
        krun $2/$file --definition ../src/gollvm-semantics-kompiled --statistics &> $2/$file.log
        diff $2/$file.old $2/$file.log > $2/$file.diff
        # echo $file
    done
}

diffTest "${llvmIRtest[*]}" llvmIR
diffTest "${negativeTest[*]}" negative