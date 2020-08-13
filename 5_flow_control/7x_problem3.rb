puts "Type in an integer between 0-100 now"
number = gets.chomp.to_i

def check(x)
  if x <= 50 && x > 0
    puts "Your number is between 0-50"
  elsif x == 0
    puts "Your number is between 0-50"
  elsif x >= 51 && x < 100
    puts "your number is between 51-100"
  elsif x <= 100 
    puts "Your number is between 51-100"
  elsif x > 100
    puts "Your number is higher than 100"
  elsif x < 0
    puts "Your number is negative, baka!"
  else
    puts "Did you even put a number, baka!?"
  end
end 

check(number)