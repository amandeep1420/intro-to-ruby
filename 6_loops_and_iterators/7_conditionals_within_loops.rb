=begin

So, loops and conditionals. In order to make loops more effective and precise, we can add conditional flow control within them 
to modify their behavior. Let's demonstrate by putting an if statement in a while loop, below:


# conditional_while_loop.rb

x = 0

while x <= 10
  if x.odd?
    puts x
  end
  x += 1
end


This loop uses the "odd?" method to decide if the current variable in the loop is odd; if it is, it prints to the screen.
Next, x is incremented by 1, and then the loop iterates again. Nifty.

Let's mess with next and break a bit again.
If you place the "next" reserved word in a loop, it will jump from the line it's on to the next loop iteration without executing the 
code beneath it; if you place the "break" reserved word in a loop, it will exit the loop immediately without executing any more code in 
the loop.

First, an example using next:


# conditional_while_loop_with_next.rb

x = 0

while x <= 10
  if x == 3
    x += 1
    next
  elsif x.odd?
    puts x
  end
  x += 1
end


We used "next" to skip printing the number 3 in our loop - so the printout goes 1, 5, 7, 9.
Second, an example using break:


# conditional_while_loop_with_break.rb

x = 0

while x <= 10
  if x == 7
    break
  elsif x.odd?
    puts x
  end
  x += 1
end


We used "break" to end the loop once x reached 7 - so the printout goes 1, 3, 5.

Soooooo loops are basic constructs that are commin in any programming language....but most Rubyists, where possible, 
prefer iterators over loops. Onward~










