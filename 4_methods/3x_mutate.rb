a = [1, 2, 3]

def mutate(array)
  array.pop
end

puts "Before mutate method: #{a}"
mutate(a)
puts "After mutate method: #{a}"

#what's printed:

#Before mutate method: [1, 2, 3]
#After mutate method: [1, 2]

#The .pop method mutates the caller!

