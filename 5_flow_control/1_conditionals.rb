=begin

Think of a computer program as a journey for your data.
Along this journey, data encounters stuff that changes it.    ~just like life~~~
Like any journey, it has to travel a path - that path has many roads. 
Some are chosen, some are not; the chosen roads depend on the end goal.

When you write a program, you want your data to make the right decisions; to do the right thing when it's supposed to.
In computer programming, this is called "conditional flow".
How do we make data do the right thing? We use -conditionals-!

//////////////////////////////////
CONDITIONALS

Think of a conditional as a fork (or many forks) in the road your data can travel. Your data approaches a conditional, and the 
conditional tells the data where to go based on some defined stuff/parameters. Conditionals are formed using a combination of "if" 
statements (!!!) and comparison operators, as well as logical operators (<, >, <=, >=, ==, !=, &&, ||). 
Conditionals are basic logical structures that are defined with the reserved words "if", "else", "elsif", and "end".
You already know this, but note that elsif is missing an e. Spooky.

We typed and tested the following code to start illustrating how conditionals work:


# conditional.rb

puts "Put in a number"
a = gets.chomp.to_i

if a == 3
  puts "a is 3"
elsif a == 4
  puts "a is 4"
else
  puts "a is neither 3, nor 4"
end


Here, we used gets to let the user input a number, chomp to get rid of the new line when the user inputs data, and to_i to convert 
the string that was inputted into an integer. **We needed to convert the string to an integer because gets always gives us a string.**
We ran this code multiple times - first with 3, then 4, then another number - to observe the output each time. 
The code checks, using the == operator, to see if the input is equal to any of the numbers we defined. 
In other words: we controlled the flow of the program by setting conditionals using an if statement. 
Good stuff.

Here are some simple examples of conditionals at work - notice how they used elsif below, as well as the 1-line syntax.


# Example 1
if x == 3
  puts "x is 3"
end

# Example 2
if x == 3
  puts "x is 3"
elsif x == 4
  puts "x is 4"
end

# Example 3
if x == 3
  puts "x is 3"
else
  puts "x is NOT 3"
end

# Example 4: must use "then" keyword when using 1-line syntax
if x == 3 then puts "x is 3" end


Like Codeacademy touched on: you can rewrite code to use if at the end.
We could rewrite example one as follows: puts "x is 3" if x == 3

The book also mentions "unless" and how it's the opposite of if - here's their example:
puts "x is NOT 3" unless x == 3
Word.
