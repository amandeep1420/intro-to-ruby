1.

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array.each do |num|
  print "#{num} "
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

3.

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array2 = []

array.select do |num|
  if num % 2 != 0
    array2 << num
  end
end

puts array2