1.  #I took a quick peek at 3_combining.. before answering these. Need to review notes.
  
  1. false    #correct
  2. false    #correct
  3. false    #correct
  4. false?   #incorrect - you were right that an integer cannot equal a string, but that expression returned false...and the whole
  5. true     #correct     statement asked if false == false, which is true! Tricky, tricky.
  
2.
  
def bigif10(words)
  if words.length.to_i > 10
    puts words.upcase
  else
    puts "String is not longer than 10 characters"
  end
end 

#this is my solution - tested and confirmed using a dummy file. checking to see how it compares to the book...

def caps(string)
  if string.length > 10
    string.upcase               #the book did not use to_i, so it looks like length returns an integer.
  else                          #notice how the book did not use puts. puts returns nil, and the book told us to "return" an 
    string                      #all-caps version of the string. checking to see how this works via irb now...
  end                           # !!! the string is used as a return value in their example !!! make note of this. oh boy.
end                             #however, they then wrote "puts caps(argument)", which negated that...so...good to note, but irrelevant now.

3.

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

#Come back and check how this compares to the book - we spent too much time on this one today.

4.

  1. FALSE
  2. "Did you get it right?"
  3. "Alright now!"
  
#Got these right, but watch the video explanation during review.

5.

#Code didn't close if/else with an end before closing the method def with an end - I was right.


