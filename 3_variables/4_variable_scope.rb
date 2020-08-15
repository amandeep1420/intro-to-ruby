#A variable's "scope" determines where it's available for use in a program. 
#A variable's scope is defined by where the variable is initialized/created.
#In Ruby, variable scope is defined by a block - a piece of code following a method invocation ( usually delimited by do/end or {} )

#BOLDED: "Inner scope can access variables initialized in an outer scope, but not vice versa."

#Book example below from a file calle scope.rb:

# scope.rb

a = 5             # variable is initialized in the outer scope

3.times do |n|    # method invocation with a block
  a = 3           # is a accessible here, in an inner scope?
end

puts a

#The "a" variable is available to the inner scope that was created by the 3.times {} . 
#Let's try something else. Same file, modified a bit:

# scope.rb

a = 5

3.times do |n|    # method invocation with a block
  a = 3
  b = 5           # b is initialized in the inner scope
end

puts a
puts b            # is b accessible here, in the outer scope?

#The answer is no - b is not accesible outside of the inner scope created by 3.times do..end. You get the below error:

#scope.rb:11:in `<main>': undefined local variable or method `b' for main:Object
#(NameError)                                                                           #I used # for the error bc it was funky

#In our example, b was not available outside of the method invocation with a block where it was initialized.

#IMPORTANT: code is considered a new block only when the do/end or {} immediately follow a method invocation. For example:

arr = [1, 2, 3]

for i in arr do
  a = 5      # a is initialized here
end

puts a       # is it accessible here?

#The answer is yes; the for...do/end code did not use a method (for is just general Ruby language). 
#each, times, etc. (using a period/using an actual method) is what creates blocks, where this rule applies.

#To summarize: variable scope matters most/applies when considering code blocks, which are only created as a result of a method 
#invocation. (I wrote this line myself when reviewing at a later date)




