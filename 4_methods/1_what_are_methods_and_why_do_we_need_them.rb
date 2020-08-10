***LONG DOC WARNING***
=begin

In programming, you'll often have a piece of code that needs to be executed multiple times in a program; instead of writing it over and 
over, programming languages have something called a 'procedure' which allows you to extract the common code to one place; in Ruby, we 
call that a 'method'.

So, method = a bunch of common code that you can use repeatedly without typing out the whole thing over and over and over.

In Ruby, you define a method using the reserved word "def". After the "def", we give the name of the method. We then give the definition; 
at the end of the definition, we use the reserved word "end" to denote its completion. Here's an example method definition:

def say
  # method body goes here
end

So how could a method like say be useful? Well, perhaps it could say something for us! Let's say we had the following code in a file 
called say.rb: 

puts "hello"
puts "hi"
puts "how are you"
puts "I'm fine"

Notice how we wrote puts over and over? Let's create a method definition for puts so we have one place where we can use puts that 
we send information to.

def say(words)
  puts words
end

Now let's use it:

say("hello")
say("hi")
say("how are you")
say("I'm fine")

Yes, this is a bit of a silly example as we actually added more code - but, per the book, "we've extraced the logic of printing 
out text so our program can have more flexibility."

We call (or "invoke") the method by typing its name and passing in arguments to the (). You'll notice the (words) after say - that 
is called a "parameter". Parameters are used when you have data outside of a method definition's scope, but you need access to it 
within the method definition. Alternatively: if a method definition does not need access to any outside data, then you do not 
need to define any parameters.












