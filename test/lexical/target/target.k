module TARGET
    syntax Definition ::= "target" TargetDefinition
    syntax TargetDefinition ::= "triple" "=" StringName
                              | "datalayout" "=" StringName
    syntax StringName ::= r"\\\"[^\\\"]*\\\"" [token]
    syntax Module ::= List{Definition, ","}
    syntax KItem ::= Module
endmodule