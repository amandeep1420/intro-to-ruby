=begin

Let's say you wanted to add, or remove, something from an array. 
There are a few methods that will help you do just that.

If you'd like to remove the last item off of an array permanently, use the pop method. See below:


array = [1, 'Bob', 4.33, 'another string']

array.pop
=> 'another string'

array
=> [1, "Bob", 4.33]


Make note: when we called the "pop" method, the original "array" variable itself was modified (in other words, this is a method that 
-mutates the caller-), but the returned value is the popped element (as shown above). 
This is a good reminder to differentiate between the value returned by an expression and what the expression is actually doing; the 
last value was returned, but the expression itself knocked that value out of the array permanently.

If you'd like to add an item to an array permanently, you can use the "push" method - here, will send 'another string' back to our 
"array" array:


array.push("another string")  #note that you can push multiple items into an array using commas here - they will push in the written order
=> [1, "Bob", 4.33, "another string"]                   


This can also be accomplished using the "shovel" operator ( << ) - see below:


array.pop
=> "another string"

array << "another string"
=> [1, "Bob", 4.33, "another string"]


Again, make note of the fact that both of these methods (push and <<) mutate the caller, so the original array is modified.

Often, you'll have an array and you'll want to operate on many of the elements in the array in the same way. Ruby has plenty of ways to 
do this.

The "map" method iterates over an array, applying a block to each element of it, and returns a new array with those results. The 
"collect" method is another alias for "map" - they do the same exact thing. See below for an example of them in action:


a = [1, 2, 3, 4]

a.map { |num| num**2 }
=> [1, 4, 9, 16]              #here, we used map to square every element in the array

a.collect { |num| num**2 }
=> [1, 4, 9, 16]              #we used the collect method to accomplish the same thing

a
=> [1, 2, 3, 4]               #the original array is unaffected


Note that there is no change to our original array after performing these methods. These methods are not "destructive" (they don't 
mutate the caller). How do we know which methods are destructive? Take a guess...you have to use them and pay attention to what is 
returned, read the documentation, etc. Basically, through experience. 






