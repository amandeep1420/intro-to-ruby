1.

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

arr = family.select do |k, v|
  if k == :brothers || k == :sisters
    v.to_a
  end
end

puts arr

#work on this tomorrow...not quite right, keys are still there. book solution offers insight into where you tripped up.

arr = family.select do |k, v|
  k == :brothers || k == :sisters     #the reason it wasn't working was because we needed to use the == on both sides of the || statement
end

arr2 = arr.flatten                    #has to be a new variable, self-setting didn't work

arr2.delete(:sisters)
arr2.delete(:brothers)

p arr

#good one to review in the future.

2.

#if I recall correctly, merge returns a new array vs. merge! modifying the original array that was used to call the method
#let's test

hash1 = { cat: 1, dog: 2 }
hash2 = { mouse: 3, snail: 4 }

hash1.merge(hash2)

p hash1
p hash2

hash1.merge!(hash2)

p hash1
p hash2

#I WAS RIGHT!! Only the hash being used to call the method is permanently mutated when using merge! instead of both methods! Awesome, good job.

3.

hash1 = { coffee: 1, water: 2, milk: 3, tea: 4 }

hash1.map { |k, v| p k }

hash1.map { |k, v| p v }

hash1.map { |k, v| p "#{k}, #{v}" }

#the book wanted us to use .keys, .values, .each.... the .keys and .values methods are redundant due to the syntax needed to complete the program 
#anyway, but I get it. Make note of this.

4.

person[name:]

#SO close. Remember: the colon can be used after the key when declaring the value during hash creation, but you have to set it before the key 
#when you're trying to call it. I knew something was off when brackets didn't work! 
#actual solution below (I tested all of this w/ irb, btw)

person[:name]

5.

hash.has_value?

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

person.has_value?("painting")
=> true

person.has_value?(3)
=> false

#cakewalk, baby.

6.

#the first set the value of x as a symbol, whereas it retains its status as a string in the second hash as the rocket doesn't inherently modify 
#the nature of the key being used?

#holy cannoli, I was right! I WAS RIGHT! Yes! Great job.

7.

#B.

#correct. Great work.

8.

#oh no, not this problem again...

#I'm going to watch the video solution right off the bat for this one. I don't want it taking up too much time, I'm more than fuzzy on what the 
#solution was, and we've done well up to this point in terms of review. Don't forget this problem, though - I want to be able to come back to it 
#someday and solve it with ease.

#goodness, the solution is so intuitive - I just need to develop the pathways in my brain to get there. Wow.

