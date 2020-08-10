#Naming variables is a big deal. Make sure your names are accurate, descriptive, and easily understood so other readers/your future
#self can understand what's going on.

#You use the = symbol to assign a value to a variable (the assignment operator). Name goes on left, value on right.
#Ex. first_name = "Joe"     we just assigned a value of "Joe" to the variable first_name

#Interesting note about variables - see below:

irb :001 > a = 4
=> 4
irb :002 > b = a
=> 4
irb :003 > a = 7
=> 7
irb :004 > b
=> 4

#Notice how the value of b remains 4? Interesting. 
#The book says "this shows that variables point to values in memory and are not deeply linked to each other".
#This will be discussed/tested further, don't worry too much for now.

