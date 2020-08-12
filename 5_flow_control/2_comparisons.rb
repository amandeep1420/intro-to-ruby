=begin

Time to discuss comparison operators in-depth. We want to build complicated conditional statements.
One thing to remember is that comparison operators a l w a y s return a boolean value.

**A boolean value is either true or false, nothing else.**

Comparison operators:
  
  < - the "less than" symbol. Anything to the left of the symbol has a lower value than anything to the right of the symbol.
  > - the "greater than" symbol. Anything to the left of the symbol has a higher value than anything to the right of the symbol.
  
  Ex. 4 < 5
      => true
      
      4 > 5
      => false

  <= - the "less than or equal to" symbol. Anything to the left of the symbol is less than or equal to anything on the right.
  >= - the "greater than or equal to" symbol. Anything to the left of the symbol is greater than or equal to anything on the right.
  
  Ex. 4 <= 5
      => true
      
      5 >= 5
      => true
      
      4 >= 5
      => false
      
      4 >= 3
      => true
      
      4 >= 4
      => true

  == - the "is equal to" operator. Anything to the left of the symbol is exactly equal to anything on the right. We discussed this prior.
  
  Ex. 5 == 5
      => true
      
      5 == 6
      => false
      
      '5' == 5             # string == integer? no sir
      => false

The last one (above) was a reminder: whenever you are comparing for equality, you must compare two things of the same type or you 
will always get a false boolean value returned.

  != - the "not equal to" operator. Anything to the left of the symbol is not equal to anything on the right.
  
  Ex. 4 != 5
      => true
      
      4 != 4
      => false
      
      4 != 156
      => true
      
Yep.

=end