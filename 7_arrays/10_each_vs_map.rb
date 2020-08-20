=begin

/////////////////////////////////////////////////
each               #the below paragraph follows the book syntax quite closely; I added "/array" after collection each time it was written

"each" gives us a simple way to iterate over a collection/array in Ruby and is preferred vs. using a for loop. The each method works on 
objects that allow for iteration and is commonly used along with a block.
If given a block, each runs the code in the block once for each element in the collection/array and returns the collection/array it was 
invoked on; if no block is given, it returns an 'enumerator' (the book gives a link to the Ruby doc site). See below for an example:
=end


a = [1, 2, 3]

a.each { |e| puts e }

#output below
1
2
3
=> [1, 2, 3]


=begin
The above code shows the most common way of using each. We iterated over each element in the array and printed them out; the original 
array was then returned at the end.

We can also modify the elements in an array and print them out - see below:
=end


a = [1, 2, 3]

a.each { |e| puts e + 2 }

#output below
3
4
5
=> [1, 2, 3]


=begin
We printed out the modified values, then returned the original array.
When no block is given, an 'enumerator' is returned - see below:
=end


a = [1, 2, 3]                                             #the book has yet to explain what an enumerator is, so I assume we will 
                                                          #discuss it in a later chapter..
a.each
=> #<Enumerator: [1, 2, 3]:each>                          #please note: the # is actually part of the returned value.
                                                          #we actually ran it in irb and copy-pasted the result.

=begin
/////////////////////////////////////////////////
map

"map" also works on objects that allow for iteration. Like each, it will invoke a given block once for each element in a collection/array. 

Where it really differs from each is the returned value; map creates and returns a new array containing the values returned by the block it 
was given. See below for an example:
=end


a = [1, 2, 3]

a.map { |x| x**2 }
=> [1, 4, 9]


=begin
We squared each element in the block and created a new array containing the values returned by the block; the new array is then returned.

Here's a weird example that illustrates how map returns a new array created by the block's returned values:
=end


a = [1, 2, 3]

a.map { |x| puts x**2 }
=> [nil, nil, nil]


=begin
Because puts returns nil every time the block is invoked, nil is given for the values in the newly created array that was returned by map.

Finally, if no block is given, an 'enumerator' is returned - see below:
=end


a = [1, 2, 3]

a.map
=> #<Enumerator: [1, 2, 3]:map>                          #please note: the # is actually part of the returned value.
                                                          #we actually ran it in irb and copy-pasted the result.

=begin
each and map are important methods to know - but distinguishing between them can be confusing in the beginning.

Here's a good way to remember them:

"each for iteration, map for transformation"

Word.