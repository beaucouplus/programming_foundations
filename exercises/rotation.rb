# Write a method that can rotate the last n digits of a number. For example:

# Note that rotating just 1 digit results in the original number being returned.

# You may use the rotate_array method from the previous exercise if you want.
# (Recommended!)

# You may assume that n is always a positive integer.
require_relative 'rotate'
require 'pry'
# convert number to string then to array
# take the x last digits from array and apply rotate to them
# keep the rest of the array in a variable
# concatenate the rest + the rotated array
# transform to digit again


def rotate_rightmost_digits(number, last_digits)
  arr = number.to_s.chars.to_a
  rotated = rotate_array(arr.last(last_digits))
  untouched = arr[0, arr.size - last_digits]
  result = untouched + rotated
  result.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917



# If you take a number like 735291, and rotate it to the left, you get 352917.
# If you now keep the first digit fixed in place, and rotate the remaining
# digits, you get 329175. Keep the first 2 digits fixed in place and rotate
# again to 321759. Keep the first 3 digits fixed in place and rotate again to
# get 321597. Finally, keep the first 4 digits fixed in place and rotate the
# final 2 digits to get 321579. The resulting number is called the maximum
# rotation of the original number.

# Write a method that takes an integer as argument, and returns the maximum
# rotation of that argument. You can (and probably should) use the
# rotate_rightmost_digits method from the previous exercise.

def max_rotation(number)
  count = number.to_s.size
  count.times do
    number = rotate_rightmost_digits(number, count)
    count -= 1
    break if count == 1
  end
  number
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
