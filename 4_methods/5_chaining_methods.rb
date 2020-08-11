=begin

So because we know for a fact that every method call returns something, we can chain methods together - giving us the ability to 
write extremely expressive and succinct code.

Let's say we created the following method definition:

def add_three(n)
  n + 3
end

That method will return - not print out, but /return/ - the value passed-in incremented by 3. We can use it like this:

add_three(5)         --->returns 8

Because the add_three method call /returns/ a value, we can then keep calling methods on the returned value! Example below:

add_three(5).times { puts 'this should print 8 times' }

When you run this in irb, you get the below result:

this should print 8 times
this should print 8 times
this should print 8 times
this should print 8 times
this should print 8 times
this should print 8 times
this should print 8 times
this should print 8 times
=> 8

Note the last line - that means the entire expression returned 8, which implies that we can keep chaining method calls if we wanted to~

In Ruby, it's common to see methods being chained together to create elegant code. A simple example:

"hi there".length.to_s       --->returns the string "8". The string 'length' method returns an integer, and we can call to_s on integers
                                 to convert them into strings.
      
Okay, cool.
Let's go back to the add_three method definition we created - with a small modification:

def add_three(n)
  puts n + 3
end

Observe that we're now using puts to output the incremented value, as opposed to the implicit return. So...will the below still work?

add_three(5).times { puts "will this work?" }

Nope. We get the following error:

NoMethodError: undefined method `times' for nil:NilClass

Hmm, let's figure out why that happened - it looks like we got a nil somewhere and nils do not know how to respond to a times method call.
Let's take it step by step - first, we just run add_three(5). The output is...

8
=> nil

Aha - it printed out the incremented value (as expected), but the /return/ value is now nil. It turns out that puts returns nil, 
and since puts n + 3 is the last expression in our method defintion, nil is now being returned by the add_three method call. We can 
no longer use add_three to keep chaining methods since it returns nil. Bummer.

**This is a very important aspect of chaining methods together: if a nil (or an exception) is thrown anywhere along the chain, the 
entire chained call will break down.**

If we want the add_three method to print out the incremented value as well as return it, we could make this fix:

def add_three(n)
  new_value = n + 3
  puts new_value
  new_value
end

(We could use return new_value, but new_value is the last expresssion in the meth def = implicit return).

Understood.


















