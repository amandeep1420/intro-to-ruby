1.

puts "Type in your name: "
name = gets.chomp
puts "Hello, #{name}!"

#book solution below - doesn't use #{}, just a plus sign. I tested and confirmed this works. Need to stop skipping ahead.
#think about what was discussed and come up with solutions using both the discussion material and codeacademy methods.

# name.rb

puts "What is your name?"
name = gets.chomp
puts "Hello " + name


2.

puts "How old are you? "
age = gets.chomp

puts "In 10 years you will be:"
puts age + 10
puts "In 20 years you will be:"
puts age + 20
puts "In 30 years you will be:"
puts age + 30
puts "In 40 years you will be:"
puts age + 40

#the book solution had no empty line in the code (I put one at line 5) and use the .to_i method on the user input

3. 

...
10.times { |age| puts age }

#totally wrong - you referenced the wrong variable and the times method doesn't need you to set a temporary variable name with ||.
#book solution below:

10.times do
  puts name
end

or

10.times { puts name }

4. 

#modifying the book solution

puts "What is your first name?"
first_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts first_name + " " + last_name

#this was basically the book solution with less dialogue

5.

#first program: x = 3
#second program: error returned because x was declared in an inner scope

#good job, you were right! the book specified the error, but I think that's a bit much to ask at the moment.
#the error was "undefined local variable or method" - just an fyi

