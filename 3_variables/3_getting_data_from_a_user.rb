#In the real world, you'll want people to be able to interact with your programs! You can't just assign everything yourself.
#Enter: methods of getting data from users.

#One way to get information from a user is the "gets" method. "gets" stands for "get string". 
#When you use gets, the program waits for the user to 1) type in information and 2) press the enter key.
#Example below:

irb :001 > name = gets
Bob
=> "Bob\n"

#Notice how gets automatically throws a newline character (\n) at the end? Keep that in mind. You can use the the .chomp 
#method to get rid of that so a new line isn't stored alongside the value.

irb :001 > name = gets.chomp
Bob
=> "Bob"

#Much better. Now we can use the name variable we created as we please.

irb :001 > name = gets.chomp
Bob
=> "Bob"
irb :002 > name + ' is super great!'
=> "Bob is super great!"