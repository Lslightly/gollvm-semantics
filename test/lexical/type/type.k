module TYPE
  imports INT
  imports BOOL
  imports STRING
  imports BASIC-K
  imports LIST
  imports K-IO
  imports MAP
  imports SET
  imports K-EQUAL

    syntax LocalName ::= LocalVar | LocalValID
    syntax LocalValID ::= r"%[0-9]+" [token]
    syntax LocalVar ::=  r"%[a-zA-Z\\.\\_\\-\\$][0-9a-zA-Z\\.\\_\\-\\$]*" [token]
    syntax LocalVar ::= r"%\\\"[^\\\"]*\\\"" [token]
    syntax OptAddrSpace ::= addrspace(UnsignedInt) | "" [klabel(#addrEmpty)]

    syntax UnsignedInt ::= r"[0-9][0-9]*" [token]
    syntax IntType    ::= IntTypePre
                        | LocalName  [klabel(#namedType)]
    syntax IntTypePre ::=  r"i[1-9][0-9]*" [token]
    syntax FPType  ::= "float" [token] | "double" [token] | "ppc_fp128" [token] | "fp128" [token]
                     | "x86_fp80" [token] | "half" [token]
    syntax LabelType ::= "label" [token]
    syntax PrimType ::= FPType | IntType | LabelType
    syntax VoidType ::= "void" [token]
    syntax X86Type ::= "x86_mmx" [token]
    syntax NonVoidType ::= "metadata"
                         | X86Type
                         | PrimType
                         | Type OptAddrSpace "*"              [klabel(#pointerType), strict(1)]
                         | Type "(" ArgList ")"               [klabel(#functionType)]
                         | "[" UnsignedInt "x" Type "]"
                         | "<" UnsignedInt "x" Type ">"
                         | "{" TypeList "}"                   [klabel(#structType), strict]
                         | "<" "{" TypeList "}" ">"           [klabel(#packedStructType), strict]
    syntax Type ::= VoidType | NonVoidType
    syntax KResult ::= IntTypePre | LocalVar | LocalValID | FPType | LabelType | VoidType | X86Type | "metadata"
    syntax TypeList ::= List{Type,","} [strict]
    syntax ArgList ::= Type "sret"
endmodule