1.

it should return [2, 3, 4, 5, 6]

#I was wrong...each will always return the original array/array that it was called on. Okay, understood.

#answer was [1, 2, 3, 4, 5]

2. 

loop do puts "Do you want to continue?"
x = gets.chomp
  if x == 'STOP'
    break
  end
end

#I kind of cheated on this one by looking at notes a bit - the main thing is that I forgot to write loop at the beginning of the code..
#Book solution is overly complex - no need to define an ans variable that doesn't get used, imo..

3. 

def count(number)
  loop do 
  if number > 0
    puts number
    num -= number
    count(number)
  else
    break
  end 
end 
    
count(5)

#this is the best I could come up with after several minutes, and it was wrong - book solution is below...

def count_to_zero(number)
  if number <= 0
    puts number
  else
    puts number
    count_to_zero(number-1)
  end
end

#this one was quite tough and doesn't feel 100% consistent with what the book used during examples as the number-1 feels out-of-place...
#...somehow. nah, it looks like it's modifying the variable during each pass, of course. we can see that. it just iterates over the 
#relevant portion each time. okay. recursion is going to be tough...will have to study/use it more whenever possible.








