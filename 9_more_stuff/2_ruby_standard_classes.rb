=begin

Oftentimes, you'll want to perform a specific operation when writing a program in Ruby.
Your first instinct may be to look up the algorithm or try to implement the operation on your own...
...depending on the complexity of the operations, Launch School would like to encourage you otherwise.

When you have a specific action you need to perform, look for it first among Ruby's standard classes.
Using libraries like the "Math" module can help you solve problems more efficiently.

Let's say you wanted to find a way to calculate the square root of a number - Ruby's "Math" module has a method called sqrt that you can 
use right away. See below:
=end


Math.sqrt(400)
=> 20.0


=begin
Nice. Another scenario: maybe you need to use Pi for something. See below - the Pi being used is a 'constant' that comes with the "Math" module. 
It's okay to not know what constants are yet or the syntax being used - just understand the concept for now. We're using Ruby's built-in libraries 
to solve our problems instead of building our own solutions from scratch every time. 
=end


Math::PI
=> 3.141592653589793


=begin
Something a little more involved: what if you wanted to calculate the specific day July 4th occurred on in 2008? Easy-peasy; you can use Ruby's 
built-in "Time" class. See below:
=end


t = Time.new(2008, 7, 4)
=> 2008-07-04 00:00:00 -0400
irb :004 > t.monday?
=> false
irb :005 > t.friday?
=> true


=begin
You're starting to see the power of using Ruby's standard classes. There is no use reinventing the wheel when you have a rich resource to 
accomplish tasks and solve problems that many have contended with before.

*Note: why "Math.sqrt" and not "math.sqrt"? Because sqrt is a 'class method' and not an 'instance method'. We've mostly dealt with instance 
methods so far, hence the possible confusion. Just use the syntax we introduced for now. We'll talk about the differences between class and 
instance methods later in the book when we introduce OOP (Object Oriented Programming) concepts.