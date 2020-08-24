=begin
Unlike the last section, this one is going to be a little heftier. 
We're going to get introduced to some common methods that Ruby has built-in to its Array class. Check the bookmark we saved from the lesson 
if so desired.

///////////////////////////////////////////////
include?                                                     (methods with a ? at the end that return a boolean are called "predicates")
                                                                                                            |
The "include?" method checks to see if the argument given is included in the specified array. It has a question mark at the end, which 
usually means you should expect a boolean value to be returned (true or false). Keep in mind: just like methods that end in "!", this is 
just a naming convention and not some kind of inherent Ruby thing where you can throw a "?" on the end of whatever method you want and call 
it a day. See below for an example of include? being used:
=end


a = [1, 2, 3, 4, 5]
=> [1, 2, 3, 4, 5]

a.include?(3)
=> true                             # a 3 is present in the array, so true is returned

a.include?(6)
=> false                            # a 6 is not present in the array, so false is returned


=begin

///////////////////////////////////////////////
flatten

The "flatten" method can be used to take an array that contains nested arrays and convert it into a one-dimensional array. See below:
=end


a = [1, 2, [3, 4, 5], [6, 7]]
=> [1, 2, [3, 4, 5], [6, 7]]

a.flatten
=> [1, 2, 3, 4, 5, 6, 7]


=begin
flatten is not destructive; we tested it in irb and found the original array to be unaffected.

///////////////////////////////////////////////
each_index

The "each_index" method iterates through an array in a similar fashion to the "each" method - however, the variable you give it represents 
the index number (instead of a value in the case of each). 
It passes the index of an element into the code block you create for you to do as you please with it. The original array is returned at 
the end of the operation. See below for an example:
=end


a = [1, 2, 3, 4, 5]
=> [1, 2, 3, 4, 5]

a.each_index { |i| puts "This is index #{i}" }
This is index 0
This is index 1                                             # I tested and found that this may not work with hashes...interesting..
This is index 2
This is index 3
This is index 4
=> [1, 2, 3, 4, 5]


=begin

///////////////////////////////////////////////
each_with_index

As you might've guessed, "each_with_index" works in a similar way to each_index. See below for an example before the explanation:
=end


a = [1, 2, 3, 4, 5]
=> [1, 2, 3, 4, 5]

a.each_with_index { |val, idx| puts "#{idx}. #{val}" }
0. 1
1. 2
2. 3                                  # make note: the first parameter is always the value, while the second is always the index.
3. 4
4. 5
=> [1, 2, 3, 4, 5]


=begin
As you can see above, each_with_index allows us to manipulate both the value and the index at the same time. We pass two parameters to the
code block when doing this. The first is the value, and the second is the index - once the parameters have been set, both can be used in 
the block. Very nifty.

///////////////////////////////////////////////
sort

The "sort" method is a useful way to order an array. It returns, surprise, a sorted array. See below:
=end


a = [5, 3, 8, 2, 4, 1]
=> [5, 3, 8, 2, 4, 1]

a.sort
=> [1, 2, 3, 4, 5, 8]


=begin
We tested sort in irb and found it to not be destructive; the original array is unaffected. The book isn't going to keep reminding us to 
test these methods, so we need to start testing methods in the future to make this distinction - we need to start asking "is this method 
returning new data, or is the original data being modified?"

Keep this in mind.

///////////////////////////////////////////////
product

The "product" method combines two arrays in a way that seems to create every possible pair from all the elements in both arrays...and 
then sets each pair as a nested array within a larger array. Weird. See below for an example:
=end


[1, 2, 3].product([4, 5])
=> [[1, 4], [1, 5], [2, 4], [2, 5], [3, 4], [3, 5]] 


=begin
We tested product in irb and found it to not be destructive. 

There are tons of methods available for arrays - if you ever think "I want my array to...", there's probably a method that does that.
Always read the documentation first, though, and figure out if it's a destructive method prior to use.

Whew.