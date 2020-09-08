=begin

"Exception handling" is a specific process that deals with errors in a mangageable and predictable way.
The main thing the book wants to make us aware of at this point is how exception handling works and what it looks like
The reserved word "rescue" will show up a lot in your Ruby career, so it's better to know what it is sooner rather than later.

When your programs are interacting with the real world, there is a high degree of unpredictability; if a user enters bad information or a 
file-manipulating process gets corrupted, your program needs to know what to do when it runs into these "exceptional" conditions.

Ruby has an "Exception" class that makes handling these errors much easier. It also has a syntactic structure using the reserved words "begin", 
"rescue", and "end" to signify exception handling. The basic structure is below:
=end


# exception_example.rb

begin
  # perform some dangerous operation
rescue
  # do this if operation fails
  # for example, log the error
end


=begin
Often, it's necessary to use exception handling when your program is interacting with either the outside world or anytihng that can behave in an 
unpredictable manner. One common occurrence of this is when a nil value makes its way into your program. We have to be prepared for this reality. 
Look at the following code - run it if you're fuzzy on the result:
=end


# exception_example.rb

names = ['bob', 'joe', 'steve', nil, 'frank']

names.each do |name|
  begin
    puts "#{name}'s name has #{name.length} letters in it."
  rescue
    puts "Something went wrong!"
  end
end


=begin
As you can see, we used a begin/rescue/end block to handle any exceptions that may happen within our code. 
In the example, we have a nil value in our array; therefore, when we go to call .length on nil, we get an error. 
When an exception (or error) is raised, the rescue block will execute and then the program will continue to run as it normally would.
If we didn't have the rescue block there, the program would stop once it hit the exception and we would lose the rest of our print-out (tested).

You can also use the rescue reserved word in-line, such as below:
=end


# inline_exception_example.rb

zero = 0
puts "Before each call"
zero.each { |element| puts element } rescue puts "Can't do that!"
puts "After each call"


=begin
The above code prints out the following:

Before each call
Can't do that!
After each call

It does so because it isn't possible to call the each method on an integer, which is the value of the "zero" variable we declared.
If we remove the rescue block, the second puts method call will not execute because the program will exit when it runs into the error.
You can see why the word "rescue" is relevant here, lol. We are effectively rescuing our program from coming to a grinding halt.
If we give this same code the proper variable, our rescue block never gets executed.

We can also rescue pre-existing errors when we are writing our code. Let's look at doing something like that with a "divide" method, below:
=end


# divide.rb

def divide(number, divisor)
  begin
    answer = number / divisor
  rescue ZeroDivisionError => e 
    puts e.message
  end
end

puts divide(16, 4)
puts divide(4, 0)
puts divide(14, 7)


=begin
Above, we are rescuing the ZeroDivisionError and saving it into a variable, "e". We then have access to the "message" method that the 
ZeroDivisionError object has available. Wild, wild stuff.

If this is confusing at this point, don't worry! As you learn more about classes and objects in the coming chapters, you can revisit this section, 
and it'll be muuuuch clearer. 
For now, you need to understand that, as you write Ruby programs, you can anticipate errors that you may run into and handle them properly so 
that your whole program isn't broken by one error.

Alright, got it.