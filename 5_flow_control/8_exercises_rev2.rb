1.

  1. false
  2. false
  3. false?
  4. true
  5. true
  
#correct for all. watching video to make sure my understanding for 3 aligns with the explanation.

2.

def makecaps(string)
  if string.length > 10
    puts string.upcase
  end
end

makecaps("I will finish launch school!")

#correct - notice that they used an else statement in the solution to define method behavior when the string length < 10 characters. See below:

# caps_method.rb

def caps(string)
  if string.length > 10
    string.upcase
  else
    string
  end
end

puts caps("Joe Smith")
puts caps("Joe Robertson")

3.

puts "What's the number, chief?"
number = gets.chomp.to_i

if number < 0
  puts "Your number is too low!"
elsif number <= 50
  puts "Your number is between 0 and 50!"
elsif number > 50 && number < 100
  puts "Your number is between 51 and 100!"
elsif number > 100
  puts "Your number is greater than 100!"
end

#basically correct, but their solution involved less code - meaning it was more elegant/efficient. Review it below:
#***you didn't include an else statement to finish the code!!!***#

# evaluate_num.rb

puts "Please enter a number between 0 and 100."
number = gets.chomp.to_i

if number < 0
  puts "You can't enter a negative number!"
elsif number <= 50
  puts "#{number} is between 0 and 50"
elsif number <= 100
  puts "#{number} is between 51 and 100"
else
  puts "#{number} is above 100"
end

4.


