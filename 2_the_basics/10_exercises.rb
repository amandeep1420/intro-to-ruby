1. 

"Amandeep " + "Bal"

2. 

thousands = 4936 / 1000
hundreds = 4936 % 1000 / 100
tens = 4936 % 1000 % 100 / 10            #I revealed this solution...
ones = 4936 % 1000 % 100 % 10

3.

movies = {
  :dangerous => 1975,
  :runner => 2004,
  :gigantic => 2013,
  :marvel => 2001,
  :eternal => 1981
}

puts movies.each { |x, y| puts y }

#this was too advanced (used stuff from the codeacademy course) - here is the solution that was given:

#OLD STYLE - uses rockets, has colon before each symbol when creating hash
movies = { :jaws => 1975,
           :anchorman => 2004,
           :man_of_steel => 2013,
           :a_beautiful_mind => 2001,
           :the_evil_dead => 1981 }

puts movies[:jaws]
puts movies[:anchorman]
puts movies[:man_of_steel]
puts movies[:a_beautiful_mind]
puts movies[:the_evil_dead]

#NEW STYLE - no rockets, colon after symbol when creating hash
movies = { jaws: 1975,
           anchorman: 2004,
           man_of_steel: 2013,
           a_beautiful_mind: 2001,
           the_evil_dead: 1981 }

puts movies[:jaws]
puts movies[:anchorman]
puts movies[:man_of_steel]
puts movies[:a_beautiful_mind]
puts movies[:the_evil_dead]

4.

dates = [1975, 2004, 2013, 2001, 1981]

puts dates[0]
puts dates[1]
puts dates[2]
puts dates[3]
puts dates[4]

5. #what is the point of this exercise? revealed the solution thinking I missed a factorial method or something..

puts 5 * 4 * 3 * 2 * 1
puts 6 * 5 * 4 * 3 * 2 * 1
puts 7 * 6 * 5 * 4 * 3 * 2 * 1
puts 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1

6. 

puts 3.4**2
puts 4.5**2
puts 343.62**2

#this was my solution; here's what the book had:

puts 4.30 * 4.30
puts 6.13 * 6.13
puts 124.34 * 124.34

7.

#there is a parenthesis where a curly bracket is supposed to be..

#that was my solution; the book said "there is an opening bracket somewhere in the program without a closing bracket following it."


