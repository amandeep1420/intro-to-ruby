=begin

We're going to touch on "until" loops super briefly just because.

Think of the until loop as the opposite of the while loop. See below - we will modify the code from the last section to use until:


# countdown.rb

x = gets.chomp.to_i

until x < 0
  puts x
  x -= 1
end

puts "Done!"


Basically, the loop runs until the expression is true (vs. while, which runs until the expression is no longer true). 
The opposite of while, essentially.

There will be times when using until will allow you to write code that is more readable, logical, etc. 
Ruby has many features for making your code more expressive...the until loop is one of them.
Mm.