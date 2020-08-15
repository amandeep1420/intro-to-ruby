=begin

There are five types of variables: constants, global variables, class variables, instance variables, and local variables.
Let's discuss each them in brief.

**CONSTANTS:
Constants are declared by capitalizing every letter in a variable's name, per Ruby convention. They are used for storing data
that never needs to change (but Ruby, unlike most programming languages, allows you to change the value of a constant if so desired).
Ruby will throw a warning if you change the value of a constant, stating that there was a previous definition for that variable; 
just because you can, doesn't mean you should. Constants cannot be declared in method definitions, and are available throughout 
an application's scopes.
~~~~~~~~~~~~~~~~~~~~~~~~
Example of a constant declaration:
MY_CONSTANT = "I am available throughout your app"
~~~~~~~~~~~~~~~~~~~~~~~

**GLOBAL VARIABLES:
Global variables are declared by starting the variable name with a dollar sign ($). They are available throughout an entire app, 
overriding all scope boundaries. Rubyists tend to stay away from global variables as they can cause unexpected complications...
~~~~~~~~~~~~~~~~~~~~~~~
Example of a global variable declaration:
$var = "I am also available throughout your entire app"
~~~~~~~~~~~~~~~~~~~~~~~

**CLASS VARIABLES (we haven't discussed classes yet):
Class variables are declared by starting the variable name with two @ signs (so @@). These variables are accessible by instances of a 
class, as well as the class itself. When you need to declare a variable that is related to a class, but each instance of that class does
not need its own value for this variable, you use a class variable. Class variables must be initialized at the class level, outside of 
any method definitions; they can then be altered using class or instance method definitions.
~~~~~~~~~~~~~~~~~~~~~~~
Example of a class variable declaration:
@@instances = 0
~~~~~~~~~~~~~~~~~~~~~~~

**INSTANCE VARIABLES:
Instance variables are declared by starting a variable name with one @ sign (NOT @@ - that's for class variables). These variables 
are available throughout the current instance of the parent class. Instance variables can cross some scope boundaries, but not all of 
them. You will learn more about this when you get to OOP topics, and should not use instance variables until you know more about them.
~~~~~~~~~~~~~~~~~~~~~~~
Example of an instance variable declaration:
@var = "I am available throughout the current instance of this class."

**LOCAL VARIABLES:
Local variables are the most common variables you will come across and obey all scope boundaries. THese variables are declared by 
starting the variable name with no special characters and do not need all-caps syntax.
~~~~~~~~~~~~~~~~~~~~~~~
Example of a local variable declaration:
var = 'I must be passed around to cross scope boundaries'
