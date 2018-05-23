# reverse an array without using the built-in reverse method"

# [1, 2, 3, 4]
# result > [4, 3, 2, 1]
# [1, 2, 3, 4]

# create a new array
# iterate with reverse.each to push each item in the new array


def reverse(arr)
  result = []
  arr.reverse_each { |item| result << item }
  result
end

p reverse([1, 2, 3, 4]) == [4, 3, 2, 1]
p reverse(%w(a b c d)) == %w(d c b a)
