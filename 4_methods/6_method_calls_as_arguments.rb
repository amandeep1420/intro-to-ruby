=begin

So. So far, we've become familiar with how methods are called. Let's use some simple examples to review this - we'll define add and subtract 
and call them:


def add(a, b)
  a + b
end


def subtract(a, b)
  a - b
end


Cool, we've defined two methods ('add' and 'subtract') that take parameters 'a' and 'b'. We will assume both are integer values. 
Remember that Ruby implicitly returns a method's last line; since both meth defs contain just one line each, we're letting Ruby do its 
thing using implicit return (we could've used an explicit return to be more specific if we wanted to, though). 
Let's call these methods by passing integer values: 


add (20, 45)
=> 65           #returns 65


subtract(80, 10)
=> 70           #returns 70


Cool. Methods.
So one thing that isn't obvious is that Ruby actually allows us to pass a -method call- as an -argument- to other methods. Crazy stuff! 
Stated another way: we're saying that we can pass add(20, 45) and subtract(80, 10) as arguments to another method.

Remember: these method calls return integer calues, which is what allows us to perform this kind of operation. 
Stated another way: the returned value is what is being passed as arguments.
Let's demonstrate this by defining a 'multiply' method:


def multiply(num1, num2)
  num1 * num2
end


Now, let's pass add(20, 45) and subtract(80, 10) as arguments to multiply:


multiply(add(20, 45), subtract(80, 10))
=> 4550        #returns 4550


Let's see a complicated example:


add(subtract(80, 10), multiply