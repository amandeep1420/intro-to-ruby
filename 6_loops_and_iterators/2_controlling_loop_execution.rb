=begin

So the ctrl + c to break example in the last section will likely never reflect real-world coding as it's not very useful and will 
result in an infinite loop, your system crashing, the plague (jk already happening lol), etc.

Let's try using the "break" keyword instead. Example below:


# useful_loop.rb

i = 0
loop do
  i += 1                #as you can guess, this loop adds 1 to i, puts the value, and ends using the break keyword.
  puts 1
  break
end


The break keyword allows us to exit a loop at any point; consequently, any code after a break will not be executed. Break kicks us out 
immediately from the loop...and back into the rest of the program to continue execution. Good distinction to keep in mind.

Next, we'll look at adding conditions within a loop. We'll print all even numbers from 0 up to 10. See below:


# conditional_loop.rb

i = 0
loop do
  i += 2
  puts i
  if i == 10            #examine this code for a moment. notice the if statement with an end - yes, you can do that.
    break
  end
end


As expected, this outputs 2 4 6 8 10 on their own lines, then stops. 
The break was not executed during the first 4 iterations through the loop. On the 5th iteration, the if statement evaluated to true - 
and so the code within the if statement was executed, which was just break. Execution ended the loop, and here we are.

Conditionals within a loop will be discussed later in more detail.

So, moving on. Similar to break, we can use the keyword "next" to skip the rest of the current iteration of a loop and start 
executing the next iteration of a loop. We will modify the code we just used to illustrate this - see below:


# next_loop.rb

i = 0
loop do
  i += 2
  if i == 4             #examine this for a moment too - next was used in a similar fashion to break. hammer these tiny if statements
    next                #into your head. they seem to be causing a mental dissonance for you for some reason.
  end
  puts i
  if i == 10
    break
  end
end


The output for this was 2 6 8 10 on their own lines. 4 was skipped using next, and the loop continued to the next iteration.

break and next are important loop control concepts that be used with "loop" or any other loop construct in Ruby. We will cover these 
in the rest of this section. 
Combining break, next, and conditionals can help build simple programs with interesting behavior.
Nifty.