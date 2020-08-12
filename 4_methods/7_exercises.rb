1.

def greeting(nombre)
  puts "Hi there, " + nombre + "!"
end

puts "Hi there! What's your name?"
name = gets.chomp
greeting(name)

#the book basically did this, but their program didn't actually grab user input..hehe.

2.

  1. 2        #correct. variable assignment returns the value assigned.
  2. nil      #correct. "puts" (pronounced "put s" according to video) always returns a nil value.
  3. nil..    #incorrect. the "p" method outputs the argument AND returns the argument.
  4. nil..    #incorrect. variable assignment returns the value assigned. don't be thrown off by the string used as the value.
  5. nil..    #correct. "print" always returns a nil value.
  
3.

  def multiply(a, b)
    puts a * b
  end
  
  puts "A?"
  first = gets.chomp.to_i
  puts "B?"
  second = gets.chomp.to_i
  
  multiply(first, second)
  
#I wrote and tested this using a dummy file and terminal
#I didn't go about this the right way; the method shouldn't have puts...save that for afterward
#Condense the method down into the simplest function possible according to the question - really pay attention to what's being asked.
#Book solution below:

  def multiply(num1, num2)
    num1 * num2
  end
  
  puts multiply(4, 2)
  

4. Yippeee!!!!

#I was totally wrong. I'm guessing the return stopped the method from continuing, so the last part never actually happens. Checking now.
#Yep. Remember: when an explicit return is used, Ruby exits the method immediately afterward.

5. 

  1. def scream(words)
       words = words + "!!!!"
       puts words
     end
     
     scream("Yippee")
     
  2. nil

#I answered both of these correctly.

6. #um...that for the method 'calculate_product', only one integer/argument was given instead of two?
   #I answered this correctly! Nice.
