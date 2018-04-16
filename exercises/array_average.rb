# Write a method that takes one argument, an array containing integers, and returns the average of all numbers
# in the array. The array will never be empty and the numbers will always be positive integers.

# given an array of integer
# calculate the average of all numbers
# numbers are all > 0

# iterate over array , sum them and divide by the size of the array

def average(array)
  array.sum / array.size
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40


def average(array)
  array.sum / array.size.to_f
end

puts average([9, 47, 23, 95, 16, 53]) == 40.5
