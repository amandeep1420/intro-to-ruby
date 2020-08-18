=begin

As you may be familiar with already, the "to_s" method is used to create a string representation of something. 
Interestingly enough, this can happen with arrays, too.
Ruby actually does this behind the scenes when you use string interpolation to print an array to the output area/screen - see below:
=end


a = [1, 2, 3]
=> [1, 2, 3]

"It's as easy as #{a}"
=> "It's as easy as [1, 2, 3]"


# Now you know. Neato~