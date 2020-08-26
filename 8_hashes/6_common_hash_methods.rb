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


name_and_age.select { |k, v| k == "bob" }
=> {"bob" => 42}

name_and_age.select { |k, v| (k == "bob") || (v == 54) }
=> {"bob" => 42, "joe" => 54}


=begin
////////////////////////////////////////////////

