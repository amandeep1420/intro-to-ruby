=begin

So we've talked about how arrays can contain anything plenty of times - you can even create nested arrays that have arrays inside 
of them. Arrays in arrays in arrays. This lesson just seems to touch on the idea of nested arrays.

Let's say you were having a sand volleyball tournament and wanted to keep track of all of the teams that were playing. You might create 
an array such as below...


teams = [['Joe, 'Steve'], ['Frank', 'Molly'], ['Dan', 'Sara']]
=> [['Joe', 'Steve'], ['Frank', 'Molly'], ['Dan', 'Sara']]


...and you could then find teams by index, such as below:


teams[1]
=> ["Frank", "Molly"]


You can also have an array of hashes, too! Arrays are full of functionality.
The book tells us to play around with them in irb, which we will when we review.

Cool stuff.

***incredibly important note for multi-dimensional arrays: you can reference the element of a subarray by adding onto syntax we already know.
***let's take the first teams array from the above notes: if you want to reference 'Dan', just type teams[2][0].
***this should be in the lesson.

