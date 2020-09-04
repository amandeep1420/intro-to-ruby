=begin

So, we've finally arrived at discussing hashes.

A hash is a data structure that stores items by associated keys; this is contrasted against arrays, which store items by an ordered index.
(the above is verbatim from the book - arrays use an index, hashes use keys)

Entries in a hash are usually referred to as key-value pairs; this creates an associative representation of data.

Most commonly, a hash is created using symbols (!) as "keys" and -any- data types as "values". 
All key-value pairs in a hash are surrounded by curly braces and separated by commas.

Hashes can be created with two different syntaxes.
The older syntax comes with a => (rocket) sign to separate the key and the value; example below:
=end


old_syntax_hash = {:name => 'bob'}
=> {:name => 'bob'}


=begin
The newer syntax was introduced in Ruby ver. 1.9 and is muuuch simpler. See below - the results are the same:
=end


new_hash = {name: 'bob'}
=> {name=>'bob'}


=begin
You can have hashes with many key-value pairs - see below (note: I tested it - the extra space b/t the braces and content is optional)
=end


person = { height: '6 ft', weight: '160 lbs' }
=> {:height=>'6 ft', :weight=>'160 lbs'}


=begin
Let's say you wanted to add on to an existing hash - see below for an example of this:
=end


person = { height: '6 ft', weight: '160 lbs' }
=> {:height=>'6 ft', :weight=>'160 lbs'}

person[:hair] = 'brown'
=> 'brown'

person
=> {:height=>'6 ft', :weight=>'160 lbs', :hair=>'brown'}      #you can add to a hash using hashname[:key] = value

person[:age] = 62
=> 62

person
=> {:height=>'6 ft', :weight=>'160 lbs', :hair=>'brown', :age=>62}


=begin
Alternatively, how do you go about about removing something from an existing hash? See below:
=end


person
=> {:height=>'6 ft', :weight=>'160 lbs', :hair=>'brown', :age=>62}

person.delete(:age)
=> 62

person
=> {:height=>'6 ft', :weight=>'160 lbs', :hair=>'brown'}


=begin
Cool. What if we want to retrieve a piece of info from a hash? See below:
=end


person[:weight]
=> '160 lbs'


=begin
Got it. How about merging two hashes together? See below for an example:
=end


person
=> {:height=>'6 ft', :weight=>'160 lbs', :hair=>'brown'}

new_hash 
=> {:name=>'bob'}

person.merge!(new_hash)
=> {:height=>'6 ft', :weight=>'160 lbs', :hair=>'brown', :name=>'bob'}


=begin
Notice that the bang suffix was used here - this made the merge method destructive (in this case).
We could've used merge (no bang) instead, which would've returned a new merged hash while leaving the original unmodified.

Word.