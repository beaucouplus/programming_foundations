# Write a method that takes an Array of numbers and then returns the sum of the
# sums of each leading subsequence for that Array. You may assume that the Array
# always contains at least one number.

# in descending order
# sum the whole array
# then sum array - 1 item
# then sum array - x item
# until x = 0

def sum_of_sums(arr)
  sum = 0
  size = arr.size
  loop do
    sum += arr.take(size).sum
    size -= 1
    break if size < 0
  end
  sum
end


p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35