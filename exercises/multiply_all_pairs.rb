# Write a method that takes two Array arguments in which each Array contains a
# list of numbers, and returns a new Array that contains the product of every
# pair of numbers that can be formed between the elements of the two Arrays. The
# results should be sorted by increasing value.

# You may assume that neither argument is an empty Array.

# set new empty array
# loop on first array
#   for each item on array
#   multiply by each item in second_array (another loop) and push to new arr
#   return the sorted array


def multiply_all_pairs(first_arr, second_arr)
  result = []
  first_arr.each do |item|
    second_arr.each { |multiplyer| result << item * multiplyer }
  end
  result.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]