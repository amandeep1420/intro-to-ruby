1.

# name.rb

name = gets.chomp

puts "Hello there, #{name}!"

#correct, they just went about it a different way - see below:

# name.rb

puts "What is your name?"
name = gets.chomp
puts "Hello " + name

2.

# age.rb

puts "How old are you?"

age = gets.chomp.to_i

puts "In 10 years you will be:"
puts age + 10
puts "In 20 years you will be:"
puts age + 20
puts "In 30 years you will be:"
puts age + 30
puts "In 40 years you will be:"
puts age + 40

#100% correct.

3.

name = gets.chomp

puts "Hello there, #{name}!"

10.times { |name| puts name }

#wrong - did not need to declare placeholder variable for method 

10.times do
  puts name
end

4.

  1. 3
  2. error because x was declared in inner scope
  
#correct.

5.


  
  