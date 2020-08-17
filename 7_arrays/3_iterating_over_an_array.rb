=begin

So back in the section about loops, we talked about using "each" to iterate over an array. Ruby (specifically the standard libaray) has 
a bunch of similar methods to this. 
Let's take a look at "select" - select iterates over an array and returns a new array that includes any items that return true to the 
expression provided. I realize that's a mouthful - look at the code below to see an example of this:
=end


numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

numbers.select { |number| number > 4 }
=> [5, 6, 7, 8, 9, 10]

numbers
=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]


=begin
See what I mean? The select method selects all of the numbers that are greater than 4 (all of the items that return true to expression we 
provided) and returns them in a new array. It is non-destructive because it did not mutate the caller in any fashion.

Neat.