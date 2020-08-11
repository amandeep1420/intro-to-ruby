=begin

Now that we've discussed methods and how they work, we can discuss the difference between puts and return.

You haven't really been properly introducred to return...because in Ruby, every method returns the evaluated result of the last line that 
is executed. Let's use the mutate.rb file (3x_mutate.rb) we created to demonstrate this:



a = [1, 2, 3]

def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
p mutate(a)
p "After mutate method: #{a}"



Within this code, we're using the p method to print out the value of whatever the mutate method returns. Output is below:



"Before mutate method: [1, 2, 3]
3
"After mutate method: [1, 2]"



Here's what is happening:
1. We print out a as we initially defined it.
2. We print out the value returned by the mutate method.
3. We print out the value of a after the mutate method.

The second line, where the code is returning a 3, might be a bit confusing; what's happening is that the method is returning the 
result of array.pop back to where it's being called from. pop is a method in the array class that removes the last element of an array 
and returns it.

We created the 4x_return.rb file to discuss return in greater detail. Take a look at it - we finish our discussion there~