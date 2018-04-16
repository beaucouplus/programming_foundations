# Write a program that solicits 6 numbers from the user, then prints a message that describes whether
# or not the 6th number appears amongst the first 5 numbers.

# START
# SET numbers = []
# 6 times do
# add to numbers GET input as integer
# SET numbers before 6th position (numbers.pop to do that?)
#  check if number in 6th position appears in the remaining array
#  END
require_relative 'utils/utils'


numbers = []
counter = 1
6.times do
  numbers << take_input("Enter the ##{counter} number")
  counter += 1
end
last_number = numbers.pop
if numbers.include?(last_number)
  puts "The number #{last_number} appears in #{numbers}"
else
  puts "The number #{last_number} does not appear in #{numbers}"
end
