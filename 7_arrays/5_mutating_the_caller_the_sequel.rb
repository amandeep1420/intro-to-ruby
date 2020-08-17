=begin

So, mutating the caller. We talked about this earlier, but it's such an important concept that we need to revisit it in greater depth.
|
Caller mutation is a really important concept to keep in mind - it's possible that you could send an argument to a method and change that 
argument forever without knowing it. This can throw off all your code and cause you serious headaches.
|
It's important to know what a method is doing to its arguments and to know what that method returns.

We will be revisiting destructive methods within the context of using a method as well. Look at the two methods outlined below and 
see if you can decipher why the first method mutates the caller while the second one doesn't:
=end


def mutate(arr)
  arr.pop
end

def not_mutate(arr)
  arr.select { |i| i > 3 }
end
a = [1, 2, 3, 4, 5, 6]
mutate(a)
not_mutate(a)

puts a


=begin
Think about the last lesson while reading this code.

The last line here will output 1, 2, 3, 4, and 5. The "mutate" method performed a destructive action (pop) on its argument, therefore 
modifying the a array, even though a was initialized outside of the method.
The 6 element, as a result, was popped out of the original array. The not_mutate method performed a non-destructive action (select) and 
left the original variable unmodified as a result.

Keep this stuff in mind when defining your methods with destructive vs. non-destructive methods.

Word.