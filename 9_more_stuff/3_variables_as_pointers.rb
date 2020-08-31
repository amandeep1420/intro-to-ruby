=begin

Alright, we're back. 

Time to take a deeper look at variables. We're going to talk about how they act as 'pointers' to a place (or address space) in memory.
Brace yourself: this is a concept that confuses a lot of new programmers...but it's really important to understand.
Let's look at a few examples before anything else - see below:
=end


a = "hi there"
b = a                     #what's b at the end of this code? I'm guessing it's "hi there" since that meshes with the intuition I've developed..
a = "not here"


=begin
Think on the above code for a second. What's b? What about in the code below?
=end


a = "hi there"
b = a 
a << ", Bob"


=begin
You'll notice that, using irb, b doesn't reflect the updated value of a in example #1 but does reflect it in example #2.
Why is this? Why does b not update in example #1 but does update in example #2?

To understand the difference in the above code examples, you need to understand the following - drum it into your head:
***VARIABLES ARE POINTERS TO PHYSICAL SPACE IN MEMORY***
Yes. Variables are pointers to physical space in memory. They point. Point to memory. Variables point to a specific physical place in your memory.
In other words: variables are basically labels we create to refer to some physical memory address in your computer.

Here's what happened in the first example:

------------------------------------------------------------------------
a = "hi there"                        a ------> "hi there"             |
------------------------------------------------------------------------
                                      a ---                            |
b = a                                      \___> "hi there"            |
                                           /                           |
                                      b ---                            |      
------------------------------------------------------------------------
a = "not here"                        a ------> "not here"             |
                                                                       |
                                      b ------> "hi there"             |
------------------------------------------------------------------------

Look at the book if that diagram is insufficient. 
We can see that the code ' a = "not here" ' reassigned the variable a to a completely different address in memory; it's now pointing to an 
entirely new string. This is what the = (assignment) operator does. It's important to understand that different memory space can, in fact, hold 
the same value, but they are still different places in memory. Think on that for a moment. For example, if our last line of code was 
' a = "hi there' ', the result would still be the same: a and b would still be pointing to -different- addresses in memory; they would just 
happen to have the same value.

Let's take a look at what happened in the second example:

------------------------------------------------------------------------
a = "hi there"                        a ------> "hi there"             |
------------------------------------------------------------------------
                                      a ---                            |
b = a                                      \___> "hi there"            |
                                           /                           |
                                      b ---                            |      
------------------------------------------------------------------------
                                      a ---                            |
a << ", Bob"                               \___> "hi there, Bob"       |
                                           /                           |
                                      b ---                            |      
------------------------------------------------------------------------

Weird, right? Let's break it down. The line of code ' a << ", Bob" ' did -not- result in reassigning a to a new string.
Instead, it ~mutated the caller~ (sound familiar?) and modified the existing string, which is also pointed to by the variable b. 
In other words, a and b were pointing to the same string, which got mutated - hence why they both reflected the change. 
B reflected the changes to a because they're both pointing to the same thing. The thing itself got changed in the final operation.

~This is the major point of this section: some operations mutate the address space in memory, but others simply change the variable to 
point to a different address space.~

This also applies to variables that point to arrays, hashes, or any data structure that has methods that mutate the caller. 
If you call a method that mutates the caller, it will change the value in that address space - and any variables also point there will be affected.
Therefore: always pay attention to whether your variables are pointing to the same object (space in memory) or if they are dealing with copies 
that occupy different address space in memory.

Here are a few more examples that illustrate this concept:
=end


a = [1, 2, 3, 3]
b = a
c = a.uniq

# a and b will be the original array, but c is the array with the uniq method applied. Alternatively...

a = [1, 2, 3, 3]
b = a
c = a.uniq!

# a, b, and c now all have the value [1, 2, 3] because uniq! modifies the original array, which both a and b were pointing to.

# another example below:

def test(b)
  b.map {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
test(a)
 => ["I like the letter: a", "I like the letter: b", "I like the letter: c"] 

a
=> ['a', 'b', 'c']

# vs.

def test(b)
  b.map! {|letter| "I like the letter: #{letter}"}          # notice the map! instead of map
end

a = ['a', 'b', 'c']
test(a)
=> ["I like the letter: a", "I like the letter: b", "I like the letter: c"] 

a
=> ["I like the letter: a", "I like the letter: b", "I like the letter: c"]       # the value of a itself has been changed.


=begin
Did you see what happened to a in the second example? Did you see how the value of a was changed even though map! was called from an inner 
scope (the method definition)? Remember that when we're passing in arguments to a method, we're basically assigning a variable to another 
variable (like we did with b = a). Working with b (the placeholder variable) in the test method may or may not modify the a in the outer 
scope depending on whether we modify the address space in memory that a is pointing to. Re-read that if you need to.

We're finished discussing this for now - this is sufficient moving forward. It's almost guaranteed that you'll run into bugs in the future 
related to this subject, so the important thing here isn't to memorize the rules - rather, understand the concept and be able to jump into 
irb to refresh your memory.

Wirb.
Oop, *word.
