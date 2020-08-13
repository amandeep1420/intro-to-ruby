=begin

The final conditional flow structure to touch on is called a "case statement". Pay extra special attention to this as codeacademy only 
addressed this very briefly.

Case statements have similar functionality to if statements, but with a slightly different interface.

Case statements use the following reserved words: case, when, else, end.
You create a case statement by first defining a "case", evaluating the value of the "case", and defining what operation to complete if 
the "case" is true.

Simple example below, with the if/elsif/else counterpart to the right:


a = 5                                                   a = 5

case a                                                  if a == 5
when 5                                                    puts "a is 5"
  puts "a is 5"                                         elsif a  == 6
when 6                                                    puts "a is 6"
  puts "a is 6"                                         else
else                                                      puts "a is neither 5, nor 6"
  puts "a is neither 5, nor 6"                          end    
end


The biggest differences here are that we only need to specify the variable for testing one time (as the argument to case) and we don't 
need to specify "a ==" on the individual when statements.

You can also save the result of the case statement into a variable. Let's refactor the case statement above to do that - we can eliminate 
having to write puts repeatedly this way.


a = 5

answer = case a
  when 5
    "a is 5"
  when 6
    "a is 6"
  else
    "a is neither 5, nor 6"
  end

puts answer


See what we did? We set the case to = answer, then set each part of the statement to output a string; when we puts answer, the string 
gets outputted. Neat.

There's a second form of the case statement that doesn't take an argument (and looks very similar to if/elsif/else/end) - see below:


a = 5

case
when a == 5
  puts "a is 5"
when a == 6
  puts "a is 6"
else
  puts "a is neither 5, nor 6"
end


Again, this form of case wasn't given an argument, so we had to fully test each value with "a ==". Most devs use if/elsif/else/end 
instead, but there are situations where an argument-less case statement is preferred. We'll discuss that later.

