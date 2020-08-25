1.

arr = [1, 3, 5, 7, 9, 11]
number = 3

arr.include?(3)     # <---- my solution 

#wow....I completely misinterpreted what they wanted. Blah. Book solutions are below.

arr.each do |num|
  if num == number
    puts "#{number} is in the array."
  end
end

#or

if arr.include?(number)
  puts "#{number} is in the array."
end

#darn it. 

2.

#I had absolutely no idea. None of it made any real sense to me. 
#8/24 - circling back around to this. Second attempt.
#I kind of answered the first one correctly, but the problem had nested arrays which I didn't account for...
#Furthermore, there was a syntax difference between the two - ( vs [ - that I was unsure about.
#I'm watching the video explanation now.

#This is actually a great, great, great exercise. Please look at this one again when reviewing. The video explanation was perfect.

3. 

arr.last.first 
#this is my guess..

#I was right!! This jives with the last question.

4.

  1. 8
  2. Isn't this the wrong syntax?
  3. Doesn't this add the value of 5 to the end of the array?
  #these were my answers...
  
  1. 3 (arr.index returns the index for the first object equal to the specified argument...5 was at index 3)
  2. Looks like I was right about the syntax? Watching the video in a moment
  3. I was totally wrong - THIS is what returns the value at index 5. Darn it. Need to study more consistently.
  
5.

#I'm guessing some kind of error occurs here? The variable "string" is set to one value - the string "Welcome to America!"...
#It doesn't look like an array, and a/b/c are all referencing indices that don't exist?..

#Oh god daNGit. They totally referenced the thing on a letter-by-letter basis. HJGTEUOIDGVFEWOIDFEJWO. Watching the video now.
#Notice how nil was returned when an index that didn't exist was referenced (an index that was beyond the length of the string).
#Good to know that you can even reference individual characters in a string using the index reference technique...

6.

#So I did hop into irb for this one - my foundation with using arrayname[] was a little shaky, and I was a little perplexed by the error.
#From what I can see, using arrayname[] needs the index, not the value. Problem 4 went over this in the third part. Okay. So the issue 
#is that you need to use the index for this operation instead of the value - I tested this and it worked in irb. Let's confirm the answer.

#Book made to sure to specify that arrays use integers as keys, not strings. I was right, but I appreciate the additional explanation.

7.

array = ["x", "y", "z"]

array.each_with_index { |val, idx| puts "#{idx}, #{val}" }

#I did this correctly, but I need to remember that the first parameter for each_with_index is the value, while the second is the index.
#I went back and changed my code to reflect this.

8.

array = [1, 2, 3]

array2 = array.map { |x| x + 2 }

p array
p array2

#I absolutely NAILED this one. Suck it, Trebeck. I didn't even know how to use p and used it correctly on my FIRST try. Boom.
#Writing the first book solution below because it's good review of an alternate method.

arr = [1, 2, 3]
new_arr = []               #notice how they defined an empty array to start with

arr.each do |n|            #notice how they used do/end - remember that they are interchangeable w/ {}
  new_arr << n + 2         #I think this is called a shovel? I recall being able to push new values to an array using it.
end 

p arr
p new_arr                 


#Good job, yo.