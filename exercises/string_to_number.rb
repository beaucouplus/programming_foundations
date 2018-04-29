require 'pry'
# The String#to_i method converts a string of numeric characters (including an
# optional plus or minus sign) to an Integer. String#to_i and the Integer
# constructor (Integer()) behave similarly. In this exercise, you will create a
# method that does the same thing.

# Write a method that takes a String of digits, and returns the appropriate
# number as an integer. You may not use any of the methods mentioned above.

# For now, do not worry about leading + or - signs, nor should you worry about
# invalid characters; assume all characters will be numeric.

# You may not use any of the standard conversion methods available in Ruby, such
# as String#to_i, Integer(), etc. Your method should do this the old-fashioned
# way and calculate the result by analyzing the characters in the string.

TABLE = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3,
  '4' => 4, '5' => 5, '6' => 6, '7' => 7,
  '8' => 8, '9' => 9, 'A' => 10, 'B' => 11,
  'C' => 12, 'D' => 13, 'E' => 14, 'F' => 15
}

# convert string to array
# change string values to digits with the table
# convert it back to a number by adding zeros to the current number depending
# on its position in the array and its size
# 4321 = [4, 3, 2, 1]
# 4 = index 0 , size is 4 > on cherche à avoir 1000 / 3 index 1, size is 4 on cherche à avoir 100
# (size - (index + 1)).times * 10 = 1000 pour 4, 100 pour 3 etc
# it's 10 ** (size - (index + 1))

def string_to_integer(string)
  numbers_in_array = string.chars.map { |num| TABLE[num] }
  arr_size = numbers_in_array.size
  sum = 0

  numbers_in_array.each_with_index do |num, idx|
    sum += num * (10**(arr_size - (idx + 1)))
  end
  sum
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570

HEX = 16

def hexadecimal_to_integer(string)
  numbers_in_array = string.chars.map { |num| TABLE[num.capitalize] }
  sum = 0
  numbers_in_array.reverse.each_with_index do |num, idx|
    sum += num * HEX**idx
  end
  sum
end

p hexadecimal_to_integer('4D9f') == 19871
