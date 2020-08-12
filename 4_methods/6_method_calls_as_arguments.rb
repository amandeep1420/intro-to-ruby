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


add(subtract(80, 10), multiply(subtract(20, 6), add(30, 5)))
=> 560         #returns 560 
(breakdown of this example below)
- First, we passed two arguments to add: subtract(80, 10) and multiply(subtract(20,6), add(30, 5)).
- The first argument (the subtract method call) returns 70. Cool.
- The second argument (the multiply method call), has two arguments within it using method calls: subtract(20, 6) and add(30, 5).
  - The subtract method call returns 14. The add method call returns 35. This makes the multiply method call multiply(14, 35). 
    Evaluating the multiply call now returns 490.
- Now we have the return values of the two method calls that were used as the initial arguments for the add method call - making 
  a method call of add(70, 490) and returning 560. Sweet.

**One thing to keep in mind: keep track of your parentheses when using nested method calls; as you've seen already, they can become 
  an easy tripping point.**
  
Book note, word-for-word: "We've seen that method calls always return a value and we can pass that method call as an argument to 
another method call based on the returned value. Thus, it's vital to know what our defined methods are returning - since in the final 
analysis, this is what is actualy being passed as arguments to other method calls.

