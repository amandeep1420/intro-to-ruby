=begin

Alright, arrays. What is an array? An "array" is an ordered list of elements that can be of any type you'd like (per the flashcard). 
You can define an array by typing out a list of elements between brackets, such as below:


[1, 'Bob', 4.33, 'another string']


Notice that the example array has strings, an integer, and a float - that's because arrays can have -anything- in them, even other arrays. 
Now we need to save the example array into a variable so we can mess around with it.


array = [1, 'Bob', 4.33, 'another string']


Cool. Let's do some stuff.
Let's say we wanna find the first element of an array - we can just use the "first" method, as below:


array.first
=> 1


Next, let's say we wanna find the last element... 


array.last
=> "another string"


...but what if we want to find the third element? Well, arrays are what we call indexed lists - that means that each slot in an array 
is numbered. You can reference any element in an array by that number - the "index number". The syntax to do this is typing the array 
name with the index you wanna reference in brackets - [] - immediately afterward. So...


array[3]
=> "another string"


Confused? Remember: all array indices start with the number 0, not 1. The element 1 in our array is at index 0, 'Bob' is at index 1, 
and so on. array[2] will return 4.33. Funky stuff, I know.