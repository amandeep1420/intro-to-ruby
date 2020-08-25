=begin

So hashes, like arrays, can have multiple elements in them.
There will be times when you'll want to iterate over a hash to do something with each individual element.
Iterating over hashes is similar to iterating over arrays...with a few small differences.

Let's try this out with 'each' first to see how it plays out.
=end


# iterating_over_hashes.rb

person = { name: 'bob', height: '6 ft', weight: '160 lbs', hair: 'brown' }

person.each do |key, value|                     #remember, you can also sub in curly braces for do/end if everything fits on one line
  puts "Bob's #{key} is #{value}."                  
end


=begin
As illustrated above: we use the each method like we would with an array, but we assign a variable to both the key AND the value.
We hammered this point home further by assigning 'key' to the key variable and 'value' to the value variable (don't mix this up with 
the each_with_index reversal we saw when using that method with arrays). 
Output for this code is below:
=end


Bob's name is bob
Bob's height is 6 ft
Bob's weight is 160 lbs
Bob's hair is brown


#Good stuff.