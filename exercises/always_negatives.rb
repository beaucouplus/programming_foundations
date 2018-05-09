# Write a method that takes a number as an argument. If the argument is a
# positive number, return the negative of that number. If the number is 0 or
# negative, return the original number.

# check if number is negative
# check if number is 0
# if it is, return it
# else
# return -number


def negative(number)
  return number if number.negative? || number.zero?
  -number
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0 