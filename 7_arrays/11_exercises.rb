1.

arr = [1, 3, 5, 7, 9, 11]
number = 3

arr.include?(3)     # <---- my solution 

#wow....I completely misinterpreted what they wanted. Blah. Book solutions are below.

arr.each do |num|
  if num == number
    puts "#{number} is in the array."
  end
end

#or

if arr.include?(number)
  puts "#{number} is in the array."
end

#darn it. 

2.

#I had absolutely no idea. None of it made any real sense to me. 