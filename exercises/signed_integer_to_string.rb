require_relative 'number_to_string'

# create an empty string
# check if negative
# add the "-" to the string if negative
# take the absolute value of the number
# use this value with integer to string
# keep the result in a variable
# concatenate the 2 strings

def signed_integer_to_string(number)
  return '0' if number.zero?
  sign = number.negative? ? '-' : '+'
  num_to_s = integer_to_string(number.abs)
  sign + num_to_s
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
