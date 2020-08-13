=begin

Alright - we're getting the hang of conditional flow (lol). 

We're going to try combining multiple conditional expressions together to create a more specific scenario for our data.
We can do this using the && and || operators - let's discuss what they mean (again..hehe). 

  && - the "and" operator. Expressions to the left and to the right of this operator have to both be true for the entire expression to be 
       evaluated to true.
  
  Ex. (4 == 4) && (5 == 5)
      => true
      
      (4 == 5) && (5 == 5)
      => false
      
      (4 == 5) && (5 == 6)
      => false

  || - the "or" operator. Either the expression to the left has to be true, or the expression to the right has to be true, for the entire
       expression to be evaluated to true.
  
  Ex. (4 == 4) || (5 == 5)
      => true
      
      (4 == 5) || (5 == 5)
      => true
      
      (4 == 5) || (5 == 6)
      => false

  ! - the "not" operator. When you add this in front of a boolean expression, it wil change that boolean value to its opposite.
  
  Ex. !(4 == 4)        #Ruby first evaluates what is in the parentheses, then the ! operator changes it. We know 4 == 4 would return 
      => false          true. Saying !true returns false. Think of !true as saying "not true". Not operator. Not. Cool.
      
**Note: when combining expressions (such as the ! example), it is good to use parentheses to group expressions together. This increases 
  readability AND helps your computer more accurately understand the intention behind the code. Parentheses are evaluated in normal 
  algebraic order.**
  
IMPORTANT: Ruby follows an ORDER OF PRECEDENCE when deciding how to evaluate multiple expressions. Look at the list below to see the 
           highest order of precedence to the lowest.
           
           1. Comparison: <=, <, >, >=
           2. Equality: ==, !=
           3. Logical AND: &&
           4. Logical OR: ||

Keeping this in mind, we can see how the following expression is evaluated:


if x && y || z              - first, the x && y statement is executed; if true, then the # do something code is executed on the next line.
  # do something            - if the x && y statement is false, then the z is evaluated; if true, then the next line of code is executed.
end                         - if the z is false, then the code will exit the if statement entirely.

Delete this line once you've gone through everything you've notated one time.



  