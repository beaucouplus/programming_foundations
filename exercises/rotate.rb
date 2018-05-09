# Write a method that rotates an array by moving the first element to the end of
# the array. The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.

# create an empty array
# get the first item of the array and keep it in a variable
# iterate over the array from index 1 and add each item to the new array
# add the first value to the array
# return the array


def rotate_array(arr)
  new_arr = []
  arr[1..-1].each { |item| new_arr << item }
  new_arr << arr.first
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

def rotate_string(string)
  rotate_array(string.chars).join
end

p rotate_string("kikou") == "ikouk"

def rotate_integer(number)
  rotate_string(number.to_s).to_i
end

p rotate_integer(1234) == 2341
