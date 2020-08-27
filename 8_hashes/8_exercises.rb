1.
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
          
family2 = family.select { |k, v| (k == :brothers || k == :sisters) }
 => {:sisters=>["jane", "jill", "beth"], :brothers=>["frank", "rob", "david"]} 

family2 = family2.values.flatten
=> ["jane", "jill", "beth", "frank", "rob", "david"]

#I did double-check how to use the select method for a brief moment from my notes, but I absolutely crushed this problem afterward IMO. 
#Lots of irb testing. 
#Checking the solution now.

#Oh my god! I did the same thing as the solution!! Even the flatten!! I did it!! Copy-pasting book solution for reference:

immediate_family = family.select do |k, v|      #book used do/end - optional
  k == :sisters || k == :brothers
end

arr = immediate_family.values.flatten           #different array names - unimportant

p arr                                           #printed array - wasn't mentioned in problem

2.

#Pretty sure one modifies the original arrays and the other (banged) doesn't.
#Tested and confirmed this in irb. Not sure if they want us to write example code illustrating the key-replacement effect, too..

a1 = {abby: 21, bea: 22, chad: 23}
a2 = {derek: 24, edward: 25}

a1.merge(a2)
=> {abby: 21, bea: 22, chad: 23, derek: 24, edward: 25}

hashes are unaffected

a1.merge!(a2) sets the returned hash as the new value of a1

#I was right. Easy one.

3. 

a1 = {air: 1, ball: 2, fire: 3}

  1. print a1.keys
  2. print a1.values
  3. a1.select { |k, v| print "#{k}, #{v}\n" }
  
#Did a little irb testing with this one just to see how things would look when printed. REMEMBER: PRINT. PRINT. PRINT. Not prints. PRINT.
#Checking book now.

#Wow...book solution was totally different in the sense that they used .each methods and puts instead of print.
#I don't think I'm wrong with my choices, but it's good to review what they used. 
#Pasted the book solution below.

opposites = {positive: "negative", up: "down", right: "left"}

opposites.each_key { |key| puts key }
opposites.each_value { |value| puts value }
opposites.each { |key, value| puts "The opposite of #{key} is #{value}" }

#Definitely a disconnect in terms of what they wanted vs. what they asked for, imo.

4. 

person[:name]

#I tested this in irb just to be absolutely sure...this feels too easy.
#Welp, I guess I was right. Nice!

5.

#I'm pretty sure it's the .include? method? The only issue is that I forget the exact syntax for using it.
#Yoooo, I was wrong. It's has_value? - this isn't in our notes, but I inferred it based on our notes on has_key? being a thing.
#I haven't checked the book yet - I just tested in irb. 

hashy = {toby: "love", butts: "lovely", nature: "loveliest"}

hashy.has_value?("love")
=> true

#Ugh, the book wrote out a whole if/else statement to "show" has_value? in action. See below:

has_value?

if opposites.has_value?("negative")
  puts "Got it!"
else
  puts "Nope!"
end

#I suppose we should write more involved programs for our solutions - something beyond just one or two lines of code.

6.

#One uses pre-1.9 syntax and one uses post-1.9 syntax? I see that the x isn't in quotes, so I'm thinking it was set as a symbol...but I forget 
#if that's how you set a symbol pre-1.9. If that is the case, then both of those hashes are effectively the same.

#OH MY GOD, I am such an idiot. I totally didn't acknowledge the variable declaration up top. AHH. They were just setting the value of x as 
#the key. Argh. Argh argh argh. Gotta pay attention. Dangit.

7.

#B.
#I'm right! Hehehe.

8.

#notes
#every element of the array has four letters
#trying to print groups of anagrams
#needs to be an array method, obviously...a method that compares the elements to each other...a method that will create multiple arrays...
#wait, why are we dealing with an array in the section regarding hashes???
#I'm going to waste the whole hour trying to figure this one out...
#I am extremely irritated with the fact that I can't figure out a solution to this one...tried using .sort, not sure where to go with it...
#I even went to the Ruby site and looked through a bunch of methods...
#Alright, another note: arrays using the same characters in the string for a value do not return as equal.
#OH!!! Individual arrays out of the elements, use sort on the individuals, compare for equality???
#I can't figure out how to create sub-arrays out of the elements...I swear we went over this....I've gone over my notes several times...
#I've spent almost an hour on this problem...
#....I just looked at the solution....I hate that I'm so lost...
#...I'm going to bed.
#next day: circling back around, I was on the right train of thought - I just didn't put together the tools I've used to get to the destination.
#it's all good.
#solution code below - review this, it's a good one:

result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each_value do |v|
  puts "------"           #this literally just puts a dash line b/t each line of values
  p v
end



#word.