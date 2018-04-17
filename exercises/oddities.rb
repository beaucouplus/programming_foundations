# Write a method that returns an Array that contains every other element of an Array that is passed in
# as an argument. The values in the returned list should be those values that are in the 1st, 3rd,
# 5th, and so on elements of the argument Array.

# START
# BEGIN METHOD oddities ( array )
# SET result = new array
# LOOP over array and keep only values whose index is even in result array
# IF array is empty, return empty array
# END METHOD
# END

def oddities(array)
  result = []
  return result if array.empty?
  array.each_with_index { |item, index| result << item if index.even? }
  result
end

def evenities(array)
  result = []
  return result if array.empty?
  array.each_with_index { |item, index| result << item if index.odd? }
  result
end

p evenities([2, 3, 4, 5, 6])

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []