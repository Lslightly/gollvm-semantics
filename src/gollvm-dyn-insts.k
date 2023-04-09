requires "gollvm-syntax.k"
requires "gollvm-configuration.k"
requires "gollvm-dynamic-syntax.k"
requires "gollvm-call.k"

module GOLLVM-DYN-INSTS
    imports GOLLVM-NORMAL-INSTS
    imports GOLLVM-CALL
    imports GOLLVM-TERM-INSTS
endmodule

//  for normal insts like add, gep
module GOLLVM-NORMAL-INSTS
endmodule

module GOLLVM-TERM-INSTS
endmodule