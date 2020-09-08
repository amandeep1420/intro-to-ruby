=begin

Okay, moving on.

For the purposes of this section: an "exception" can be viewed as synonymous with an error.

During the course of program execution, many things can go wrong for a variety of reasons - and when something does go wrong, usually we say 
'an exception is raised'. This is a common technical phrase that just means your code encountered some sort of error condition.
When an exception is raised, it is usually accompanied by a large output of text of what looks like a bunch of gibberish, lol. It's in this 
gibberish that you'll find the clues to the source of the problem, and it's important to start developing an eye for scanning and parsing this 
gibberish output for said clues.
This skill will end up being one of the most important things to develop over time - because if you're like most programmers, your code will 
generate a lot of exceptions :')

See below for a simple example of an error condition:
=end


irb :001 > '1' + 1
TypeError: no implicit conversion of Integer into String


=begin
In the above example, we see a TypeError because the two types don't match - one is a String, another an Integer - and Ruby doesn't know how 
to add them together. In Ruby terms: an exception is raised, which will halt execution unless there is code in place to rescue the exception.

Ruby has a set of built-in exceptions that also come with an attached message. In the above example, the exception is a TypeError and tells us 
it can't add the two together without explicitly converting one to a compatible type.
Some other common built-in error types you might see are below:
=end


StandardError
TypeError
ArgumentError
NoMethodError
RuntimeError
SystemCallError
ZeroDivisionError
RegexpError
IOError
EOFError
ThreadError
ScriptError
SyntaxError
LoadError
NotImplementedError
SecurityError


=begin
That wasn't a complete list, and you don't need to memorize it, but it gives a good idea of the kind of situations that might cause an exception.
The TypeError in the previous code example shows the first line of the error message provided by the exception - but in real exceptions, you'll 
often see line after line after line of text...which will look like a wall of gibberish.
What does the rest of the text mean? To illustrate: let's look at another example and walk through diagnosing the cause of the error using the 
message output from the exception.

We created a file called greeting.rb and had it contain the following:
=end


def greet(person)
  puts "Hello, " + person
end

greet("John")
greet(1)


=begin
This is obviously a simple chunk of code, but let's walk through it anyway.
First, we define a method - greet - which expects on parameter.
The idea is that we can write a line of code that says "greet("Jack")" and it should output "Hello, Jack".
When we run the script greeting.rb that we created, we get one correct greeting...aaaand one error as output. Don't panic! We're going to take the
error output line-by-line and understand what it means.

(We're looking at the book's error output while breaking this down.)

The first use of the greet method supplies a String ("John") as a parameter, and so the output is what you'd expect it to be.

However, when we pass 1 as an argument into the greet method, we get a TypeError exception. We already mentioned the first line - it's an error 
type and the accompanying error message - but what do the other lines mean?

Part of this involves understanding how execution works within Ruby, involving the 'stack'. We're zooming out for a sec.
When Ruby invokes a method, the method is added to Ruby's 'stack'; in the simple example above when we called greet("John"), program execution 
would look like the following:

main -> greet -> puts -> exit and return to main

Now we can make a little more sense of the output from the error, as it provides a detailed trace (known as a stack trace) that shows the flow 
of execution and where the error occurred.

In the second method invocation, greet(1), an error occurs and the program execution flow didn't exit back to main - it stayed in the greet 
method. THe program execution, again, looks like this:

main -> greet -> puts

Let's revisit the error:

greeting.rb:2:in `+': no implicit conversion of Integer into String (TypeError) from greeting.rb:2:in `greet'
from greeting.rb:6:in `<main>'

The stack trace first tells us where the error occurred and why: line 2 of greeting.rb, where the error was because the types didn't match.
The error occurred due to the call made in the 'main' context on line 6, which contains the line that called the method with incorrect arguments,
line 2.

Whew. Eye break.

This is a shorter error stack trace than most - let's take a look at a slightly more complex example. Note: try not to worry about anything 
you don't understand in the code yet, just pay attention to the stack trace and how it allows you to see what called which method + provides a 
trail of calls.

See below for the code they used:
=end


def space_out_letters(person)
  return person.split("").join(" ")
end

def greet(person)
  return "H e l l o, " + space_out_letters(person)
end

def decorate_greeting(person)
  puts "" + greet(person) + ""
end

decorate_greeting("John")
decorate_greeting(1)


=begin
As expected, the second method call raises an exception. Ordinarily, the flow should be as follows:

main -> decorate_greeting -> greet -> space_out_letters (passes result back) -> greet -> decorate_greeting -> main

Looking at the stack trace, you can see this happening.
First, the line where decorate_greeting was called shows in the trace, then the line where greet is called by decorate_greeting, then the line 
where space_out_letters is called by greet. 
Because the function 'split' expects a string, we get an error, along with a trace of calls that lead up to that error.

In a small script, this kind of thing is less useful - but in a larger codebase, being able to trace the execution flow is a super useful way to 
drill down to the source of an error.

Man oh man, we are almost done with prep. We are almost done with prep!!