module TEST
  imports DOMAINS
  imports K-IO

  syntax KItem ::= "lhs" Int Int

  syntax Int ::= foo(Int) [function]
  syntax Bool ::= bar(Int) [function]

  rule foo(X) => #let _ = #trace("foo") #in X
  rule bar(_) => #let _ = #trace("bar") #in false

  rule lhs A B => foo(A) requires bar(B)
endmodule