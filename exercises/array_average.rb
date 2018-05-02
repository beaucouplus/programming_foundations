# Write a method that takes one argument, an array containing integers, and returns the average of all numbers
# in the array. The array will never be empty and the numbers will always be positive integers.

# given an array of integer
# calculate the average of all numbers
# numbers are all > 0

# iterate over array , sum them and divide by the size of the array

def average(array)
  return 0 if array.empty?
  array.sum / array.size
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

# The average method is defined on line 10, it takes a parameter, array.
# Considering its name, we can assume the method aims to work with an array.
# It creates a new scope for the array parameter, which is now accessible
# as a local variable inside the method.
# On line 12, array.sum is divided by array.size
# array.sum is a method that sums every number in an array of integers.
# It returns that sum as an integer
# array.size is a method that counts the items in an array an returns 
# the result as an integer.
# Considering the division operator, we must make sure the divisor is > 0.
# The average method returns the result of the operation on line 12, because
# in ruby, a method always returns the result of the last line inside
#  the method definition.

# When invoked, the method uses the scope defined by the method definition.
# It takes the array used as param to perform the average operation and return
# it. It's a non destructive method as it does not mutate the caller.

def average(array)
  array.sum / array.size.to_f
end

puts average([9, 47, 23, 95, 16, 53]) == 40.5
