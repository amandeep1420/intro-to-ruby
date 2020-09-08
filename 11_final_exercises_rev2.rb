1.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each { |x| print "#{x}\n" }

#book said print, solution used puts. A little frustrating, but I knew I was being facetious with my solution consider we never use \n.
#book solutions below for reference - my solution was 100% sufficient.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# one line version
arr.each { |number| puts number }

# multi-line version
arr.each do |number|
  puts number
end

2.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each do |x|
  if x > 5
    puts x
  else
    next      #didn't even need a next here - could use a standalone if statement per the book solution
  end 
end 

#book solution below for reference - mine is 100% sufficient.

# one line version
arr.each { |number| puts number if number > 5 }

# multi-line version
arr.each do |number|
  if number > 5
    puts number
  end
end

3.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr2 = arr.select { |x| x.odd? }

#took me a hot second - wanted to use the .odd? method instead of doing it the long way
#tested and confirmed solution in irb
#book solution below - they did it the long way. 

# one line version
new_array = arr.select { |number| number % 2 != 0 }

# multi-line version
new_array = arr.select do |number|
  number % 2 != 0
end

4. 

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.push(11)    #tested in irb because reasons - remember that arr << 11 would also work

arr.unshift(0)  #also tested in irb for the same reasons

5.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

arr.pop(11)

arr << 3      #wow...arr << 3 creates an array of just three....don't use arr as a variable name for arrays from now on...lol.

#correct - remember that you don't have to pass in an argument for .pop if the last number in the array is the one you want to remove.

6.

#arr.uniq

#correct - book also specifies .uniq! as an example that mutates the caller vs. uniq, which does not.

7. 

#array uses an index to reference elements (values), hash uses user-defined keys to reference values.

#book solution: The major difference between an array and a hash is that a hash contains a key value pair for referencing by key.

8.

h1 = {
  1 => 'dog'            #here, 1 is an integer
}

h2 = { 1: 'dog' }       #here, 1 is a symbol - you were not consistent in your definitions

#see below for proper solution - you were on the right track, but sloppy.

hash = {:name => 'bob'}       # old version
hash = {name: 'bob'}          # new version

9.

  1. h[:b]
  2. h[:e] = 5
  3. h.delete { |k, v| v < 3.5 }

#1 and 2 were correct - needed to use delete_if for 3, as delete isn't the method we want to use here. delete works for specifying one single
#item for deletion - delete_if is better for criteria/multi-item deletion without specifying the items to be deleted.

10.

#yes to both - correct.

h1 = { 
  [1, 2, 3] => 'dog',
  [4, 5, 6] => 'cat'
}

a1 = [ {cat: 1}, {dog: 2} ]

#oops - hash VALUES as arrays - rewrite for posterity:

h1 = { dog: [1, 2, 3] }

11.

#not this problem again..

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts['Joe Smith'][:email] = contact_data[0][0]
contacts['Joe Smith'][:address] = contact_data[0][1]
contacts['Joe Smith'][:phone] = contact_data[0][2]
contacts['Sally Johnson'][:email] = contact_data[1][0]
contacts['Sally Johnson'][:address] = contact_data[1][1]
contacts['Sally Johnson'][:phone] = contact_data[1][2]

p contacts

#I think I did it right. I think I did it right! I tested it!! Checking solution now!!!
#I DID IT RIGHT!!!!

12.

contacts['Joe Smith'][:email]
contacts['Sally Johnson'][:phone]

#correct - tested in irb. book used string interpolation for their solution, but the basis of the solution is the same as my answer.

13.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr = arr.map { |x| x.split(" ") }
arr = arr.flatten
arr.delete_if { |x| x.start_with?('s') }

arr 

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr = arr.map { |x| x.split(" ") }
arr = arr.flatten
arr.delete_if { |x| x.start_with?('s') || x.start_with?('w') }

arr

#my solution is better than the book solution and fulfills the answer criteria for #14 to boot - I submitted feedback regarding all of this.
#skipping #14 as a result since the solution is already written above.

15.

# "These hashes are the same!"

# same symbols, just different ways to declare them being used; hashes don't check for order inherently...or something.
# I'd like to hear what the book solution is, so I'm going to watch the solution video for enrichment.

