1.

puts "What's your name?"
name = gets.chomp

def greeting(name)
  print "Hi there, #{name}!\n"
end 

greeting(name)

#I used irb/ruby to test this - correct, mine was just extra.

2.

  1. 2        #correct
  2. nil      #correct
  3. nil      #incorrect - "Joe". The p method both outputs AND returns the argument.
  4. "four"   #correct
  5. error?   #incorrect - nil. Print will just output the value of the assignment, then return nil like it usually does.
  
#watching video for a refresher.

3.

def multiply (a, b)
  return a * b      #will not output anything - can use p to both ouput AND return the product from the expression
end 

multiply (2, 3

#basically correct.

4. 

"Yippeee!!!!" #I'm pretty sure...note: I knew that the code would end at the return. I'm not sure why I thought it'd return the prior line 
#where the variable re-assignment occurred. Something in my brain said "hurr durr auto-return last line", but that's an inbuilt Ruby thing 
#that occurs when return isn't explicitly stated. Come on, now, you silly bum.
#I KNEW IT. Return was on its own line. Nothing will come back. All we did was re-assign the value of words within the method definition scope.
#Gonna watch the video because why not.

5.

def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee")

#tested in irb - returns nil due to puts. irb testing feels like cheating a wee bit.
#watching video because I feel sneaky.

6.

#line 4: wrong number of arguments given to calculate_product method - given 1, expect 2.

#correct.