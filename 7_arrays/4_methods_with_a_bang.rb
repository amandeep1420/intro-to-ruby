=begin

Let's talk about ! - not !=, not the ! that reverses a Boolean, but the bang suffix for methods.
The bang suffix (!) at the end of a method -usually- indicates that a method will change/mutate the caller permanently...but, unfortunately, 
this is not always the case. A good rule of thumb is to be wary of ANY method that has the bang suffix - it would be wise of you to check the 
Ruby documentation to see if it will behave destructively or not.

Something that muddles this further is considering methods like "pop" and "push", which are destructive with no bang at the end. Right? 
It's a little confusing in the beginning, but you'll get used to differentiating between common methods as you write more code in Ruby. 
Knowing what's destructive and what's not, while very useful and integral to programming in Ruby, is something that will be learned 
through experience above all else (I think).

=end
