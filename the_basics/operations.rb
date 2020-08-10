#Ruby contains plenty of basic mathematical expressions
#such as +, -, *, /.

#To use them, just put a space b/t the values and the operators shown above. Very simple.

#Ruby has a few new ones (to you) - see below:

#Modulo ("%"): used in x % x format. Number on the left is the quotient, number on the right is the modulus.
#When used with positive integers, this returns the remainder of a division operation. See below:

16 % 5 = 1

#Do NOT think of this as the "remainder" operator, however. That is wrong. Do not do that. Don't.
#We will come back to this in a moment.

#We have a few methods that seemingly accomplish something similar to modulo - .remainder and .divmod.
#The .remainder method returns the remainder of an integer division operation - ex. below:

16.remainder(5) = 1

#The .divmod method computes both the integer result of the divison and the modulo value, too - ex. below:

16.divmod(5) = \[3, 1\]

### Here's the kicker: there is a difference between modulo and remainder operations.
### Summarized below:

=begin
> Modulo operations return a positive integer when the second operand is positive, and a negative integer when 
  the second operand is negative.
> Remainder operations return a positive integer when the first operand is positive, and a negative integer when
  the first operand is negative.
  
  a     b	    a % b (modulo)    a.remainder(b)    a.divmod(b)
  17	  5	        2	                  2	              [3, 2]
  17	 -5	       -3	                  2	             [-4, -3]
 -17	  5	        3	                 -2	             [-4, 3]
 -17	 -5	       -2	                 -2	              [3, -2]
 
> Explanation from the lesson: "In case you're wondering why some of the values in the 
  modulo column have an absolute value of 2 but others have an absolute value of 3, the 
  main thing to observe is that 5 - 2 == 3: 5 is the absolute value of b (the modulus).

> Long story short: this only becomes an issue when using negative integers (or when using other languages
  as some use % to compute the remainder...ugh). In general, try to avoid this problem as much as possible 
  by working with positive integers exclusively; if you can't, then make sure you know exactly which 
  operator or method you need to use when working with negative integers.
   