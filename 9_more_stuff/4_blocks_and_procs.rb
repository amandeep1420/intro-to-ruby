=begin

Okay, moving on.

We talked about blocks ealier in this book but we're going to go a little deeper - let's look at the power of blocks.
Blocks, like parameters, can be passed into a method just like normal variables. 
This isn't super hard to do, and it's very powerful. Let's look at an example of this below:
=end


# passing_block.rb

def take_block(&block)
  block.call
end

take_block do 
  puts "Block being called in the method!"
end


=begin
This is a pretty simple example, of course. Let's break it down. 
The ampersand in the method definition tells us that the argument is a block - you could name it anything you want.
The block itself must always be the last parameter in the method definition.
When we're ready to use the method, we call it like any other method - here, it's take_block. The only difference is that, because this method 
can accept a block, we can pass in a block of code using {} or do/end. 
As you've noticed, we've been using blocks all along - but this is the first time we've defined our own method that takes a block as an argument.

Let's make this more complex - say we wanted to pass an argument to the method as well...see below:
=end


# passing_block.rb

def take_block(number, &block)
  block.call(number)
end

number = 42
take_block(number) do |num|
  puts "Block being called in the method! #{num}"
end


=begin
Chew this one over for a second when reviewing. Here, we are passing the "number" variable into the "take_block" method and using it in our 
block.call that was defined in the method definition.
When using blocks, the amount of flexibility and possibilities are endless!

///////////////////////////////////////////////////////////////////////////
Procs

Procs are blocks that are wrapped in a proc object (objects will be covered soon, don't worry) and stored in a variable to be passed around. 
See below for how to define a proc:
=end


# proc_example.rb

talk = Proc.new do
  puts "I am talking."
end

talk.call


=begin
Procs can also take arguments if specified - see below:
=end


# proc_example.rb

talk = Proc.new do |name|
  puts "I am talking to #{name}"
end
talk.call "Bob"


=begin
Procs can be passed into methods, too! Let's take our previous "passing_block.rb" code and modify the method to take a proc instead. We'll add a
bit of functionality, too. See below:
=end


# passing_proc.rb

def take_proc(proc)
  [1, 2, 3, 4, 5].each do |number|
    proc.call number
  end
end

proc = Proc.new do |number|
  puts "#{number}. Proc being called in the method!"
end

take_proc(proc)


=begin
Using procs gives us the added flexibility to be able to reuse blocks in more than one place without retyping them every time.

It's not critical to understand this stuff well just yet - the goal of this section is just to give you a general idea of what they are in case 
you come across these concepts while reading some Ruby code.

Word. Whew.
