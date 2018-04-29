require 'pry'
require 'pry-byebug'
# require_relative 'string_to_number'

# Write a method that takes a positive integer or zero, and converts it to a
# string representation.

# OBJECTIVE split the integer into digits
# define how big is the number
# i'll try to divide the number by 1 to 9 power 10 to know if how many digits
# after the first digit it contains it contains
# 4321 / 10**3 = 4 , so it has 3 numbers after the first digits

# I may need to create a recursive function (not sure)

MAX_ZEROS = 9
TEN = 10

def find_greatest_power_of_ten(number)
  powers = (0..MAX_ZEROS).select { |power| number / TEN**power > 0 }.reverse
  powers.map { |num| num }
end

def add_zeros_if_needed(number, powers, second_number)
  zeros = powers.count do |power_of_ten|
    number % (TEN**power_of_ten) == second_number
  end
  zeros - 1
end

def add_numbers_to_array_recursively(number, array)
  powers = find_greatest_power_of_ten(number)
  divisor = TEN**powers.max

  current_digit = number / divisor
  remaining_number = number % divisor

  zeros = add_zeros_if_needed(number, powers, remaining_number)

  array << current_digit
  zeros.times { array << 0 }

  add_numbers_to_array_recursively(remaining_number, array) if remaining_number > 0
end

def integer_to_string(number)
  return "0" if number == 0
  result = []
  add_numbers_to_array_recursively(number, result)
  result.join
end

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']


# corrected
def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    binding.pry
    break if number == 0
  end
  result
end


p integer_to_string(50076) == '50076'
p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
