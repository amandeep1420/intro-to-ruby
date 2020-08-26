=begin

Let's take a look at some common methods for Ruby's Hash class.

////////////////////////////////////////////////
has_key?

The "has_key?" method allows you to check if a hash contains a specific key. It returns a boolean. See below:
=end


name_and_age = { "bob" => 42, "steve" => 21, "joe" => 54 }

name_and_age.has_key?("steve") 
=> true

name_and_age.has_key?("reginald")
=> false


=begin
////////////////////////////////////////////////
select

The "select" method allows you to pass a code block and will return any key-value pairs that evaluate to true when ran through the block. 
See below:
=end


name_and_age = { "bob" => 42, "steve" => 21, "joe" => 54 }

name_and_age.select { |k, v| k == "bob" }
=> {"bob" => 42}

name_and_age.select { |k, v| (k == "bob") || (v == 54) }
=> {"bob" => 42, "joe" => 54}


=begin
////////////////////////////////////////////////
fetch                                                                      (The book provides a link to the Ruby site to see what else can be done)
                                                                                                                                |
The "fetch method allows you to pass in a given key, which will then return the value for said key if it exists. You can also specify an option 
for what to return if that key isn't present. See below: 
=end


name_and_age = { "bob" => 42, "steve" => 21, "joe" => 54 }

name_and_age.fetch("steve")
=> 42

name_and_age.fetch("bobby brown")                                         #error is returned when option for lack of key presence isn't specified
=> KeyError: key not found: "bobby brown"
     from (irb):32:in `fetch'                                               
     from (irb):32
     from /usr/local/rvm/rubies/ruby-2.5.3/bin/irb:16:in `<main>''
     
name_and_age.fetch("bobby brown", "bobby brown is not in this hash")      #option for lack of key presence was specified - observe syntax
=> "bobby brown is not in this hash"


=begin
////////////////////////////////////////////////
to_a

The "to_a" method returns an array version of a hash when called. It is not destructive. See below for an example:
=end


name_and_age.to_a
=>[["bob", 42], ["steve", 31], ["joe", 54]]

name_and_age
=> {"bob"=>42, "steve"=>31, "joe"=>54}


=begin
////////////////////////////////////////////////
keys and values

Finally, if you wanna just retrieve all the keys or all the values from a hash, you can do so super easily - see below:
=end


name_and_age.keys
=> ["bob", "steve", "joe"]

name_and_age.values
=> [42, 31, 54]


=begin
Notice how the returned values are in array format; because of this, you can do nifty things like printing out all the keys in a hash 
(so name_and_age.keys.each { |k| puts k } ). Good stuff.