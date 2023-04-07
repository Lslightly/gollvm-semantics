module TEST
    syntax Str ::= r"\\\"[^\\\"]*\\\"" [onlyLabel, token]

    syntax LocalValID ::= r"%[0-9]+" [onlyLabel, token]
    syntax LocalVar ::=  r"%[a-zA-Z\\.\\_\\-\\$][0-9a-zA-Z\\.\\_\\-\\$]*"
                         [onlyLabel, token]
    syntax LocalVar ::= r"%\\\"[^\\\"]*\\\"" [onlyLabel, token]

    syntax GlobalValID ::= r"@[0-9]+" [onlyLabel, token]
    syntax GlobalVar ::= r"@[a-zA-Z\\.\\_\\-\\$][0-9a-zA-Z\\.\\_\\-\\$]*"
                         [onlyLabel, token]
    syntax GlobalVar ::= r"@\\\"[^\\\"]*\\\"" [onlyLabel, token]

    syntax LabelStringConstant ::= r"[a-zA-Z\\.\\_\\-\\$0-9]*\\:" [onlyLabel, token]
    syntax LabelStringConstant ::= r"\\\"[^\\\"]*\\\"\\:" [onlyLabel, token]

    syntax MetadataVar ::= r"\\![a-zA-Z\\.\\_\\-\\$\\\\][0-9a-zA-Z\\.\\_\\-\\$\\\\]*"
                           [onlyLabel, token]
    syntax AttributeGroupId ::= r"\\#[0-9]+" [onlyLabel, token]
    syntax ComdatVar ::= r"\\$[a-zA-Z\\.\\_\\-\\$\\\\][0-9a-zA-Z\\.\\_\\-\\$\\\\]*"
                          [onlyLabel, token]
    syntax IntTypePre ::=  r"i[1-9][0-9]*" [onlyLabel, token]
endmodule