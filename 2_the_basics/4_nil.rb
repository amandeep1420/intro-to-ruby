#In programming, you always need a way to express "nothing".

#In Ruby, we use "nil" to represent this.

#A variable with a value of nil could be described as having 'nothing' or being 'completely empty' or even 
#simply 'not any specific type'. 

#Want to check if something is a nil type? Use ".nil?" to check.
#Example below:

"Hello, world!".nil? => outputs to false

#Important: when used in an expression (such as an if statement) it will be treated as false (as it represents 
#the absence of content)

#HOWEVER (sorry for caps), there's an important caveat to this - see below:

false == nil => false

#While both false and nil are both treated as negative when evaluated in an expression, they 
#are not equivalent. Remember this.