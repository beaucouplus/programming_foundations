# Write a method that takes an Array of integers as input, multiplies all the
# numbers together, divides the result by the number of entries in the Array,
# and then prints the result rounded to 3 decimal places. Assume the array is
# non-empty.

# perform inject or reduce :* on array
# divide it by the count of items in the array
# round to 2 decimal places with f
def show_multiplicative_average(arr)
  result = arr.reduce(:*) / arr.size.to_f
  format('%.3f', result)
end

p show_multiplicative_average([3, 5])
# The result is 7.500

p show_multiplicative_average([6])
# The result is 6.000

p show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667