=begin

Sometimes, when calling a method, the argument you pass in can be altered permanently. We call this "mutating the caller". 
...before getting into that: remember that we previously stated that method parameters are scoped at the method definition level
and are not available outside of the method definition. Quick example:

def some_method(number)
  number = 7       <----implicitly returned by the method..
end

a = 5
some_method(5)
puts a

In the above code, a was passed to the some_method method; in some_method, a is assigned to the local variable number, which is scoped 
at the method definition level. Number is reassigned the value 7 in the method definition ONLY - so when we puts a after using the method, 
it's still 5. Sooo, this would suggest/reinforce the idea that the argument is only modified within the scope of the method definition...

...but of course, there's an exception to the rule! When we perform some action on the argument that -mutates the caller-, we can 
permanently alter variables outside the method definition's scope.

Refer to "3x_mutate.rb" to see this in action - we use local variable "a" and set it to store an array, then mutate it using the .pop 
method. Don't get confused by the method name "mutate" - that is purely cosmetic for the demonstration. The p that is used functions 
similarly to puts (seems to include quotes vs. puts which doesn't include them in the output). 

See how the .pop method knocked off the 3 in the array -outside of the method-? We outputted the values to the console, and the a array 
is clearly changed. Contrast this with a method such as .last (refer to "3x_nomutate.rb" to see this in action), which doesn't mutate 
the caller. The same output is seen before AND after the method invocation.

How do you know which methods mutate the caller and which ones don't? Memorize it, lol. You'll have to look at documentation or put 
methods into practice to figure this out.