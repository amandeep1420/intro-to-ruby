=begin

A "do/while" loop works in a similar way to a regular ol' while loop. 
One important difference is that the code within the loop gets executed one time, prior to the conditional check to see if the code
should be executed.

In a do/while loop, the conditional check is placed at the end of the loop as opposed to the beginning. We'll write some code that asks if 
the user wants to perform an action again if the user enters 'Y'.


# perform_again.rb

loop do
  puts "Do you wanna do that again?"      #loop runs once, then checks for a condition to run again
  answer = gets.chomp
  if answer != 'Y'
    break
  end
end


Oddly enough, I see no while here...lol. 
Notice how it's a simple loop, except the condition to break out of the loop occurs at the end - ensuring that the loop runs at least 
one time.
Come back to this at some point and play around with it vs. a standard while loop.

Side note: there's another construct in Ruby that supports do/while loops, like this:


begin
  puts "Do you want to do that again?"
  answer = gets.chomp
end while answer == 'Y'


...while this does work, it's not recommended by the creator of Ruby.
So...let's not commit this one to memory.