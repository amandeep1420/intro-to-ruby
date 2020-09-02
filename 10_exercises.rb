1.

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array.each do |num|
  print "#{num} "
end

#book solution below - note that they weren't being literal when they said 'print':

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# one line version
arr.each { |number| puts number }

# multi-line version
arr.each do |number|
  puts number
end

2.

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array.each do |num|
  if num > 5
    print "#{num} "
  else
    next
  end
end

#book solution below - same deal as last time:

# one line version
arr.each { |number| puts number if number > 5 }

# multi-line version
arr.each do |number|
  if number > 5
    puts number
  end
end

3.

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array2 = []

array.select do |num|
  if num % 2 != 0
    array2 << num
  end
end

puts array2

#Wow, I really over-thought this one - look at the book solution (granted, my solution works - but it's far less elegant):

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# one line version
new_array = arr.select { |number| number % 2 != 0 }

# multi-line version
new_array = arr.select do |number|
  number % 2 != 0
end

4.

#Dangit, I forgot the methods for this. Hold on. Thinking.
#Ugh. UGH. Book said I can look at the Ruby docs, so we'll look at those instead of our notes.

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array << 11
array.unshift(0)

#Correct - book solutions below:

# Append
arr.push(11)
# --- or ---
arr << 11

# Prepend
arr.unshift(0)

5.

array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

array.pop
#append a three? Where? At the end? Or in the sequence?
array.push(3)

#Correct - book solutions below:

# Remove from end of array
arr.pop

# Append
arr << 3
# --- or ---
arr.push(3)

6.

array = [0, 1, 2, 3, 3, 4, 5, 6, 7, 8, 9, 10]

array.compact 
#no
array.uniq
#yes

#observe that, while you are looking at the documentation for help, you're still recognizing the method needed right away
#book solution below - they just threw in uniq! for giggles

# Does not modify calling object
arr.uniq

# Modifies the calling object
arr.uniq!

7.

#array = inbuilt numerical index for elements starting at zero
#hash = custom index made of keys with corresponding values

#book below - basically saying the same thing:

The major difference between an array and a hash is that a hash contains a key value pair for referencing by key.

8.

hash1 = {
  1 => "cat"
}

hash2 = { 1: "cat" }
#second one is wrong...integer won't work as symbol
#see below - this one should've been easy, come on now:

hash = {:name => 'bob'} # <= old version
hash = {name: 'bob'} # <= new version

9.

h = {a:1, b:2, c:3, d:4}

  1. h[:b] #tested with irb...
  2. h[e] = 5 #had to check the documentation...need to study more, this is basic. How could I be unsure about this...goodness.
  3. h.delete_if { |k, v| v < 3.5 } #checked the documentation yet again..
  
#book solutions were exactly the same

10.

  1. yes? hash = {
    a => [1, 2, 3]
  }...
  #irb said no..
  #book said yes
  #this is so frustrating
  
  #book solution below - it's okay. focus. rough morning.
  
  # hash values as arrays
hash = {names: ['bob', 'joe', 'susan']}

# array of hashes
arr = [{name: 'bob'}, {name: 'joe'}, {name: 'susan'}]

11.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

#this is really discouraging, not going to lie.

#Watching the video walkthrough now.

#book solution below - this is actually very straightforward and was quite helpful

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

12.

  1. contacts["Joe Smith"][:email]
  2. contacts["Sally Johnson"][:phone]
  
#basically right - book didn't say to use #{} and puts, but whatever. see below:

puts "Joe's email is: #{contacts["Joe Smith"][:email]}"
puts "Sally's phone number is: #{contacts["Sally Johnson"][:phone]}"

13.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if do |word|
  word.start_with?("s")
end

#tested and confirmed in irb - had to add quotes for the parameter

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |word| word.start_with?("s") || word.start_with?("w") }

#you were right, but there's a more elegant way of doing this - see below:

arr.delete_if { |word| word.start_with?("s") }

arr.delete_if { |word| word.start_with?("s", "w") } #observe the multiple parameters

14.

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
     
a = a.map { |s| s.split(" ") }
a = a.flatten

# my solution works, but look at the book's solution for syntax comparison

a = a.map { |pairs| pairs.split }
a = a.flatten
p a

15.

#"These hashes are the same!"

#I was right

16.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
  
#I didn't even attempt this - watching the solution instead. 

#Watch this again when reviewing.
  

#Number of times I've iterated through all of my notes: 0

