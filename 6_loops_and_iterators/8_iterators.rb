=begin

Iterators are -methods that naturally loop over a given set of data-, and allow you to operate on each element in a collection.

Earlier, we described arrays as "ordered lists". 
Let's say you had an array of names and you wanted to print them to the screen. How could you do that?
Well, you could use the each method for arrays, as shown below:


# practice_each.rb

names = ['Bob', 'Steve', 'Joe', 'Janice', 'Susan', 'Helen']

names.each { |name| puts name }


Very concise! Time to explain. I demarcated the explanation with ///s just because.

///////////////
We called the "each" method using the dot operator (., yes it's a thing apparently) on the array. 
The each method will loop through each element in the array, in order, starting from 'Bob'. Then it begins executing the code within the 
block. The start and end points for the block are defined by the curly braces.

Each time we iterate over the array, we need to assign the value of the element to a variable (we named the variable "name") and place it 
between two pipes ( the | | ). In other words, we define a placeholder variable that will contain the value of each element when the code 
in the block is being iterated over.

After defining the variable, we wrote the logic we want to use to operate on the placeholder variable (which represents the current array 
element). The logic used simply prints output using puts.
//////////////

Alright, let's continue.

What is a block? A "block" is just some lines of code ready to be executed. That's it. 
When working with blocks, there are two styles we need to be aware of.
By convention, we use curly braces - { } - when the block fits on one line.
By convention, we use "do" and "end" when we need multiple lines.
An example of adding to the code we used previously (via adding do and end) is below:


# practice_each.rb

names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']
x = 1

names.each do |name|
  puts "#{x}. #{name}."         #try figuring out what this code does in the future without referencing the below explanation
  x += 1
end


What did we do? We added the counter "x" to add a number before each name, creating a numbered list in the output. "x" is incremented 
every time we go through the iteration using x += 1. Nifty, nifty.

It's hard, but you gotta memorize small stuff in Ruby - such as all the differences in syntax for each loop structure we've used so far. 
Ruby is super expressive; part of what makes that possible is the ability to do one thing in a bunch of different ways.

There are many other iterator methods in Ruby; over time, we will get used to them all (or at least a bunch more).
For now, just know that most Rubyists prefer to use iterators (like the 'each' method) to loop over a collection of elements.

Word.