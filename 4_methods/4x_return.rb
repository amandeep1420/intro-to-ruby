#First demonstration of return

def add_three(number)
  number + 3
end

returned_value = add_three(4)
puts returned_value

---> 7

#We saved the returned value of the add_three method invocation in a variable called returned_value. We printed returned_value to 
#the output to see what it has inside it. It printed 7 - because that's what the method call returned.

#**Ruby methods ALWAYS return the evaluated result of the last line of the expression UNLESS an explicit return comes before it.**

#Second demonstration of return - if you want to explicitly return a value, you can use the return keyword

def add_three(number)
  return number + 3
end

returned_value = add_three(4)
puts returned_value

---> 7

#the output is the same, of course. That's how you use the return keyword, though. Let's see what happens when we use return before 
#the last line of code in the method definition...

def add_three(number)
  return number + 3
  number + 4
end

returned_vale = add_three(4)
puts returned_value

---> 7

#the program will still output 7 - the number you told it to return.
#when you place a return in the middle of the add_three method defintion, it just returns the evaluated result of number + 3, which 
#is 7, WITHOUT executing the next line.

#one of the major pooints to take away freom this section is that the return reserved word is not required in order to return 
#something from a method - this is an inbuilt feature of the Ruby language. Another simple example:

def just_assignment(number)
  foo = number + 3
end

#the value of just_assignment(2) is going to be 5 because the expression evaluates to 5 - so that's what is returned.
#good stuff, good stuff.






