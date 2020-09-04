1.

arr = [1, 3, 5, 7, 9, 11]

number = 3

arr.include?(number)

#alright guys, you really need to be more specific about the content of the program you want me to write...lol.
#I was correct, but they wanted a full if statement dealio.

2.

#I did use irb to test the difference between Array(1..3) and [Array(1..3)].
#I also used irb to test the syntax a bit - basically, I used irb to sort-of cheat.

  1. arr = [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
  2. arr = [[b], [a, [1, 2, 3]]]
  
#correct for both - wish I didn't have to use irb, though...

3.

arr.last.first

or

arr[1][0]

#Even better than correct.

4.

  1. 8.
  2. error? wrong syntax?
  3. 3
  
#1 and 3 are wrong - you swapped them. I'm pretty sure this happened the first time around, as well.
#the .index method returns the index value for the first instance of the specified element.
#using arr[#] will return the value at index #.

5.

  1. e
  2. A
  3. !

#3 is wrong - you miscounted...lol.
#3 is nil because the index doesn't reach 19 for the string - stops at 18. derp.

6.

#well, the bracket needs an index value. this ain't no hash.

#correct.

7.

arr = [1, 2, 3]

arr.each_with_index { |val, idx| puts "#{idx}, #{val}" }

#I ran this code after checking - no errors or anything, but gotta remember that the first parameter is for the value when it comes to this method.

8.

arr = [1, 2, 3]

arr2 = arr.map { |x| x + 2 }

p arr
p arr2

#cakewalk.

#book solution is different, but my code is more elegant/efficient. I'm gonna take this win.
#book solution below for reference.

arr = [1, 2, 3, 4, 5]
new_arr = []

arr.each do |n|
  new_arr << n + 2
end

p arr
p new_arr

