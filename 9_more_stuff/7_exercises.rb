1.

#Gosh dang it. I need to check my notes right off the bat.
#This is definitely a regex question - using regex to evaluate strings for criteria...or something.
#I'm gonna get a little funky with this one.

funky = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

funky.each do |word| 
  if word.downcase =~ /lab/
    puts "#{word}"
  else
    puts "#{word} doesn't contain 'lab'!"
  end
end

#I AM THE BEST!! THIS WORKS!! SUCK IT, TREBEK!!
#Feels good writing working code on the first..ish...try. 

#Hmm...the book defined a method for this instead. Notice that they didn't identify Pans Labyrinth as having lab...your downcase was extra, hehe.
#Book solution pasted below for review.

def check_in(word)
  if /lab/ =~ word
    puts word
  else
    puts "No match"
  end
end

check_in("laboratory")
check_in("experiment")
check_in("Pans Labyrinth")
check_in("elaborate")
check_in("polar bear")

2.

#This one was tricky - I forgoed putting an answer out of timidity.

#Answer: nothing is printed to the screen because the block is never activated with the .call method. The method returns a Proc object.

3. 

#exception handling refers to the methods by which we modify programs to account for bad user input or corrupt data/executions in our code. 
#it enables a program to continue running despite the aforementioned issues, and allows us to handle said issues in elegant and constructive ways.

#Book solution:
#Exception handling is a structure used to handle the possibility of an error occurring in a program. It is a way of handling the error by 
#changing the flow of control without exiting the program entirely.

4.

#I SWEAR I put block.call in the code from #2 and it didn't work...argh.

#Solution below:

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

5. 

#Forgot the ampersand when defining the method, so the code expects the argument in () vs. curly braces/do+and for a block. 
#The code thinks no argument was given as a result since it's not written to accept a block as an argument.

#I was right. Excellent.



