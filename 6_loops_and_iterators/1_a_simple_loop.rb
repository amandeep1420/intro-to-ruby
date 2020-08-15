=begin

"Some operations in computer programming are best served with a loop." Yes.

A 'loop' is the repetitive execution of a piece of code for a given amount of repititions, or until a certain condition is met.
Yes.
The loops to be covered: "while" loops, "do/while" loops, and "for" loops.

/////////////////////////////////////////
A SIMPLE LOOP

So, loops.
The simplest way to create a loop in Ruby is to use the "loop" method. Nice. "loop" takes a block, denoted by {...} or do...end. 
A "loop" will execute any code within the block you denoted until you stop the loop with a "break" statement inside the block (or you 
input ctrl + C). One of these will force the loop to stop and continue executing the code after the loop.
Example below:


# loop_example.rb

loop do
  puts "This will keep printing until you hit Ctrl + C"             #it's not kidding, lol
end


Yes, this keeps printing until you break the loop with ctrl + C. Lol.