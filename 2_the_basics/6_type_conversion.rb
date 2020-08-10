#(this piggybacks off of the very last line in the operations.rb doc)

#What if you want to add a string and integer together? For example, you want to increment a user input of '12' by 2.
#Obviously you can't write '12' + 2 as it'll error out - so, convert it!

#To convert a string to an integer, use the to_i method.
#Ex. '12'.to_i will return 12. String converted to integer.

#The book mentioned to_f, which seems to convert either a string or an integer to a float number (when possible).
#Ex. 4.to_f will return 4.0. 

#Finally, there is also .to_s, which converts something into a string.
#Ex. 4.to_s will return "4"

#There are some interesting examples where .to_i can sometimes turn a string into an integer...see below:

irb :001 > '4'.to_i
=> 4

irb :002 > '4 hi there'.to_i
=> 4

irb :003 > 'hi there 4'.to_i
=> 0

irb :004 > '4'.to_f
=> 4.0

irb :005 > '4 hi there'.to_f
=> 4.0

irb :006 > 'hi there 4'.to_f
=> 0.0

#The book encouraged playing around with these in irb to get a feel for edge cases.