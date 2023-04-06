module DECLARE
    syntax Def ::= "declare" FunctionProto
    syntax FunctionProto ::= ExternalLinkage OptVisibilityStyle FunctionHeader
                           | OptDllStorageClass OptVisibilityStyle FunctionHeader
    syntax ExternalLinkage ::= "extern_weak"  | "external" 
    syntax OptVisibilityStyle ::= "default"  | "hidden"  | "protected" 
                               | "" [klabel(#visibilityEmpty)]
    syntax OptDllStorageClass ::= "dllimport"  | "dllexport" 
                                | "" [klabel(#dllStorageEmpty)]

    syntax OptCallingConv ::= "ccc"  | "fastcc"  | "coldcc"  | "x86_stdcallcc"  | "x86_thiscallcc" 
                            | "x86_fastcallcc"  | "x86_cdeclmethodcc" | "intel_ocl_bicc" 
                            | "arm_apcscc"  | "arm_aapcscc"  | "arm_aapcs_vfpcc" 
                            | "msp430_intrcc"  | "ptx_kernel"  | "ptx_device" 
                            | "spir_func"  | "spir_kernel"  | "x86_64_sysvcc" 
                            | "x86_64_win64cc"  | "webkit_jscc"  | "anyregcc" 
                            | "preserve_mostcc"  | "preserve_allcc"  | "cc" 
                            | "" [klabel(#callingConvEmpty)]
    syntax RetAttr ::= "inreg" [klabel(#inregOfReturn)]
                     | "zeroext" [klabel(#zeroextOfReturn)]
                     | "signext"  [klabel(#signextOfReturn)]
                     | "noalias" [klabel(#noaliasOfReturn)]
    syntax RetAttrs ::= List{RetAttr," "}
    syntax FunctionHeader ::= OptCallingConv RetAttrs Type GlobalName
                               "(" ArgList ")" OptUnnamedAddr FuncAttrs OptSection
                                OptComdat OptAlign OptGC OptPrefix OptPrologue
    syntax Type ::= "i2" [token] | "void" [token]
    syntax GlobalName ::= GlobalVar | GlobalValID
    syntax GlobalValID ::= r"@[0-9]+" [token]
    syntax GlobalVar ::= r"@[a-zA-Z\\.\\_\\-\\$][0-9a-zA-Z\\.\\_\\-\\$]*"
                         [token]

    syntax ArgList ::= "" [klabel(#argListUnit)]
                     | "..." [klabel(#vaArgs), function, symbol]
                     | ArgType             
                     | ArgType "," ArgList [klabel(#argTypeCon)]
    syntax ArgType ::= Type ParamAttrs           [klabel(#argTypeTwo)]
                      | Type ParamAttrs LocalVar [klabel(#argTypeThree)]
    syntax LocalVar ::=  r"%[a-zA-Z\\.\\_\\-\\$][0-9a-zA-Z\\.\\_\\-\\$]*" [token]

    syntax ParamAttr ::= "sret"  | "nocapture"  | "byval" 
                       | "nest"  | "inalloca"  | "returned" 
                       | "readnone" [klabel(#readnoneOfParam)]
                       | "readonly" [klabel(#readonlyOfParam)]
                       | "inreg" [klabel(#inregOfParam)]
                       | "zeroext" [klabel(#zeroextOfParam)]
                       | "signext"  [klabel(#signextOfParam)]
                       | "noalias" [klabel(#noaliasOfParam)]
    syntax ParamAttrs ::= List{ParamAttr," "}
    syntax OptUnnamedAddr ::= "unnamed_addr" | "local_unnamed_addr" 
                            | "" [klabel(#unnamedEmpty)]
    syntax FuncAttrs ::= List{FuncAttr," "}
    syntax FuncAttr ::= "noreturn" [token] | "nounwind" [token]
    syntax OptSection ::= "" [klabel(#sectionEmpty)]
    syntax OptComdat ::= "" [klabel(#comdatEmpty)]
    syntax OptAlign ::= "" [klabel(#alignEmpty)]
    syntax OptGC ::= "" [klabel(#gcEmpty)]
    syntax OptPrefix ::= "" [klabel(#prefixEmpty)]
    syntax OptPrologue ::= "" [klabel(#prologueEmpty)]
endmodule