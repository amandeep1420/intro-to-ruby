=begin

So, recursion. What is it? It's another way to create a loop in Ruby :')

Recursion is the act of calling a method from -within itself-. Yes, you read that correctly. It sounds more confusing than it is - let's 
discuss it.

////////////////////////////////////////////
A SIMPLE EXAMPLE

Let's say you wanted to know what the double of a number is...then the double of that number...and so on.
Let's say you wanted to double the number until the pre-doubled number is 10 or greater. Don't ask why.
You c o u l d create the following method...


def doubler(start)
  puts start * 2
end


...and then you could use it like so...


def doubler(start)            doubler(2)            doubler(4)            doubler(8)
  puts start * 2      =>      4             =>      8             =>      16              and so on...
end                           => nil                => nil                => nil



...or you could do this much more simply using recursion! See below to accomplish everything using one chunk of code:


def doubler(start)
  puts start
  if start < 10
    doubler(start * 2)
  end
end


Tricky, eh? This version of the "doubler" method we created -calls the "doubler" method we defined within itself-, 
passing it the doubled version of the value stored in the start variable. Chew this over for a minute.

////////////////////////////////////////////
ANOTHER EXAMPLE

Okay, buckle up. We're going to use a method that uses recursion to caluclate the Nth number in the fibonacci sequence.
The fibonacci sequence is basically a sequence of numbers in which each number is the sum of the previous two numbers.
It's totally okay if this takes a few reads to chew through. Example is below:


# fibonacci.rb

def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end 
end 

puts fibonacci(6)


What's tricky is that, until the recursion calls hit "number < 2", they keep running the -entire- method during each call. That's what 
confused me for a hot sec; it's not just 5 + 4, it's all the fibonaccis resulting from 5 + all the fibonaccis resulting from 4. 
Imagine each one branching down into smaller and smaller iterations of the method until number < 2 - that's what consistutes each 
portion in the recursion. That is what threw me off. Whew. Look at the book if you want a refresher. 

Basically: every time the code from the book diagram branches off, you are calling the -entire function (including the recursions)- 
from within itself two times. The book does a good job of diagramming this and how it eventually tapers off into a bunch of 1s and 0s 
from each tiny branch - which constitute the original fibonacci(5) and fibonacci(4) that started it all as a result of the puts.
This is really handy, you just need to grasp it mentally. 

The key concept to glean from this, and for recursion in general: there is some baseline condition that returns a value, which then 
"unwinds" the recursive calls until they stop happening. Another way to think of it: the successive recursive calls build up, until 
some value is returned, at which point the recursive calls can finally be evaluated.

Phew. Tough.

