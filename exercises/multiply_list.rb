# Write a method that takes two Array arguments in which each Array contains a
# list of numbers, and returns a new Array that contains the product of each
# pair of numbers from the arguments that have the same index. You may assume
# that the arguments contain the same number of elements.

# map the first array with index
# multiply the current num by the num with same index in second_arr

def multiply_list(first_arr, second_arr)
  first_arr.map.with_index { |num, idx| num * second_arr[idx] }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]