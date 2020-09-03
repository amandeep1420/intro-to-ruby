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

Yes, this is a bit of a silly example as we actually added more code - but, per the book, "we've extracted the logic of printing 
out text so our program can have more flexibility."

We call (or "invoke") the method by typing its name and passing in arguments to the (). You'll notice the (words) after say - that 
is called a "parameter". Parameters are used when you have data outside of a method definition's scope, but you need access to it 
within the method definition. Alternatively: if a method definition does not need access to any outside data, then you do not 
need to define any parameters.                                     #the term "method invocation" refers to calling a method...just fyi

When defining a method, you can name a parameter whatever you'd like...but a good programmer gives things meaningful and explicit names 
(hehe). We named our parameter above "words", for example, because our say method expects words to be passed into it! Get the deal? 

The actual stuff that goes into the parameter field when you're using a method are called "arguments". Arguments are pieces of info 
sent to a method invocation to be modified or used to return a specific result. We "pass" arguments into a method when we call it. 
In the say method we created, we are using an argument to pass the word, or string of words, that we want to use in the say method 
definition. When we pass those words into the method definition, they're assigned to the local variable "words" and we can use them 
however we please -from within the method definition-. **Note that the words local variable is scoped at the method definition level; 
in other words, you cannot reference this local variable outside of the say method definition.** #remember scopes~

Okay, cool. Let's continue.

When we call say("hello"), we pass in the string "hello" as the argument in place for the words parameter; then the code within the 
method definition is executed with the words local variable evaluated to "hello". #seems excessive to explain this, but I think 
                                                                                   acknowledging the terminology used here may be 
                                                                                   important...read this again.
                                                                                  
One of the benefits that methods give us is the ability to make changes in one spot that affects a bunch of different spots in our 
programs. Let's say we wanted to add a . at the end of every single string we send to the say method we created; we would only 
have to make that change in one place! See below:

def say(words)
  puts words + '.'       <------we make one change here, but everything involving this method changes now :o
end

This starts to convey the true power of using methods.

//////////////////////////////////////////////////
DEFAULT PARAMETERS

When defining methods, you may want to structure your method definition so that it always works...whether given parameters or not. 
Let's try restructuring the say method definition we created again so that we can assign a 'default' parameter in case the caller 
doesn't send any arguments. See below:

def say(words='hello')
  puts words + '.'
end

Now if we call the method as such - say() - it prints hello to the console. We've set a default parameter that is used whenever 
say is called without any arguments given. Coolio~

//////////////////////////////////////////////////
OPTIONAL PARENTHESES

Rubyists often leave off parentheses when calling methods as a style choice - so instead of writing say(), they'd just write say. 
With arguments, peeps will write say "hi" instead of say("hi"). The tradeoff is more fluid reading of code at the expense of possible 
confusion. Don't get confused! Just remember this, silly - especially so you don't get mixed up between local variables and method names.

//////////////////////////////////////////////////
METHOD DEFINITION AND LOCAL VARIABLE SCOPE

Let's discuss the concept of local variable scope within a method definition for a hot sec. 

A method definiton creates its own scope outside the regular flow of execution; this is why local variables within a method definition 
cannot be referenced from outside of the method definition. It's also the reason why local variables within a method definition cannot 
access data outside of the method definition UNLESS the data is passed in as a parameter. See below for a simple example of this:

a = 5

def some_method
  a = 3
end

puts a

The value that will be put is still 5. Method definitions create their own scope that's entirely outside of the execution flow.

***The stuff below is copy-pasted from the book...just keep it in mind***

Make sure you don't mix up -method invocation with a block- and -method definition- when you're working with local variable scope issues. 
They may look similar at first, but they are not the same. They have different behaviors when it comes to local variable scope.



# Method invocation with a block

[1, 2, 3].each do |num|
  puts num
end



# Method definition

def print_num(num)
  puts num
end









