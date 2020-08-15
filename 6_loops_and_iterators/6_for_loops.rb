=begin

In Ruby, "for" loops are used to loop over a collection of elements. 
Unlike a while loop, where we can cause an infinite loop if we're not careful, for loops have a definite end - since they loop over a 
finite number of elements.

They begin with the "for" reserved word, followed by a variable, then the "in" reserved word, and then a collection of elements.
We'll show this using two examples: one using a "range", and another using an array.

First, the range example. A range is a special type in Ruby that captures a range of elements - for example, the 1..3 range captures 
the integers 1, 2, and 3. See below:


# countdown3.rb

x = gets.chomp.to_i

for i in 1..x do          #this loop outputs every integer from i to 1 on its own line. 
  puts i
end

puts "Done!"


Something odd about the for loop is that it returns the collection of elements used after it executes - whereas earlier, the while loops 
we discussed return nil. 
Here's another for loop example using an array instead of a range - see below:


#countdown4.rb

x = [1, 2, 3, 4]

for i in x do             #this loops outputs every element of the array on its own line
  puts i
end

puts "Done!'


As you can see, there are lots of way to loop through a collection of elements using Ruby.
Moving on~