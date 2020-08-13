=begin

Ruby has a nice option for concise conditional "if" statements.
The -ternary operator- is a common Ruby idiom that does this. Ternary operators make quick "if/else" statements easy and keeps it all on 
one line...unlike what we just did.

Ternary operators use a combo of "?" and ":" - see the examples below:


true ? "this is true" : "this is not true"
=> "this is true"

false ? "this is true" : "this is not true"
=> "this is not true"


So, how does this work? Let's break it down into just a couple simple steps

  - Your computer evaluates whatever is to the left of the "?"
  - If the expression is true, then the code on the left side of the ":" gets executed
  - If the expression is false, then the code on the right side of the ":" gets executed
  
That's all there is to it. Ternary operators will come in handy as we use more and more "if" statements. 
Keep them in mind, and practice if you'd like. Suggestion: test in irb as the ruby test file we created was acting weird.
