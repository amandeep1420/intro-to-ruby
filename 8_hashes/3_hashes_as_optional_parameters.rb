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