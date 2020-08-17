=begin

Quick maths. You can compare arrays for equality using the == operator. See below:
=end


a = [1, 2, 3]
=> [1, 2, 3]

b = [2, 3, 4]
=> [2, 3, 4]

a == b 
=> false

b.pop 
=> 4

b.unshift(1)
=> [1, 2, 3]

a == b
=> true 


=begin
See anything new? You'll notice that the "unshift" method was used above. Think of "unshift" as the total opposite of "pop" - while pop 
takes the last item off a list/array, unshift adds the arguments that you specify to the front of a list/array.

I put "list/array" because the book keeps using the word list in this section for some reason.

Anyways, unshift - adds whatever is in the parentheses to the front of an array (like .push but at the beginning instead of the end).

Moving on~