=begin

You ~may~ recall that in Chapter 3 (methods - 4 for us), we talked about the ability to assign default parameters to your methods so that the output 
is always consistent/you've got all your output options covered.

The following is going to break your brain a tiny bit: you can use a hash to accept optional parameters when you are creating methods.
I repeat: you can use hashes to create more output options for your methods based on input.

Whew.

Doing this can be helpful when you want to give your methods more flexibility, expressivity...more options, if you will!
Let's try this out - see below:
=end


# optional_parameters.rb

def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name} and I'm #{options[:age]}" + " years old and I live in #{options[:city]}."
  end
end

greeting("Bob")
greeting("Bob", {age: 62, city: "New York City"})


=begin                      (returns true if a hash contains no key-value pairs)
Let's break this down.          |
We used the Ruby hash method "empty?" to detect whether the options parameter, which is a hash, had anything passed into it (check the Ruby site 
for more info - we wrote a quick definition above). We then called the method twice at the end - once using no optional parameters, and again 
using a hash to send the optional parameters. You can see how using this feature could make methods more robust - more expressive, more dynamic.

Finally, to add a small twist - you can also pass in arguments to our method as so:
=end


greeting("Bob", age: 62, city: "New York City")


=begin
I know, I know. Note how regular parentheses were used here instead of curly braces despite the last argument being a hash. I don't get why. 
I suppose we should use this syntax instead of ("Bob", {age....}). Blah. I wish the book hadn't used the prior syntax in the first place.
Keep in mind that the last syntax we used (no curly braces) is commonly used by Rails devs.

Phew.