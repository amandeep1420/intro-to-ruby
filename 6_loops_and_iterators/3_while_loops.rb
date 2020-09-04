=begin

A "while" loop is given a parameter that evaluates to a boolean (true or false). 
Once the boolean expression becomes false, the while loop is not executed again, and the program continues on past the loop.

Code within the while loop can contain any logic that you want it to. Let's make a while loop together - we'll make a program that counts 
down from any given number (from the user), printing each step until it hits 0.


# countdown.rb

x = gets.chomp.to_i

while x >= 0
  puts x
  x = x - 1
end

puts "Done!"


Notice how the program waits for user input before executing the loop.
Let's break this code down:
  - First, the program waits for the user to input a number (observe what happens when a negative or a string is inputted)
  - Next, the program evaluates the line x >= 0 - which evaluates to true (if you put a positive integer). 
  - The program then enters the loop, executing puts x and then x = x - 1. 
  - The program returns to the top, now with the newly updated value of x, and repeats the first evaluation, and so on.
  - This continues until x >=0 evaluates to false, at which points the loop is exited and the rest of the program is executed.
Basically, it loops. Loop. It loops over the logic within itself, repeatedly. Loopity loop loops.

Side note - here's a tiny trick to refactor this loop using something you know, but haven't used much:

change x = x - 1 to x -= 1 

This is a fairly common thing to most programming languages and it's more succinct/elegant/requires less typing/etc.
Works with any other operator.

**Important note! When making a while loop that checks if an expression is true to continue looping (such as x >= 0), you gotta have 
code within the loop that MODIFIES the value of x somehow. The loop will continue infinitely if x never changes. Don't be a silly.**