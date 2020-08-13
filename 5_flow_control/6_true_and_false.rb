=begin

So an interesting thing to note is that, after if and elsif, we have to put an expression that evaluates to a boolean value (either true 
or false). We could even write code like this:


a = 5
if a
  puts "how can this be true?"
else
  puts "it is not true"
end


Guess the output? Weirdly enough, it's "how can this be true?". 
Why? 
**In Ruby, every expression in flow control evalautes to TRUE, except for FALSE and nil.**
You can give a all sorts of values here - 0, "" (empty string), 'false' - and they'll all evaluate to "how can this be true?".
Pushing this idea even further, we could write code like this...


if x = 5
  puts "how can this be true?"
else
  puts "it is not true"
end


...and get the same result. Why? Because the code is -not- testing whether x is equal to 5 - it's just assigning the variable x to the 
value of 5, which will always evaluate to true. 
Annoyingly, this looks very similar to if x == 5, which is actually testing whether x is equal to 5. You have to be careful when reading 
and writing Ruby because of stuff like this.

