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