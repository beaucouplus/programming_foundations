# Write a program that prompts the user for two positive integers, and then prints
# the results of the following operations on those two numbers: 
# addition, subtraction, product, quotient, remainder, and power. 
# Do not worry about validating the input.

require_relative 'utils/utils'

# START
# SET first_number = take input as integer
# SET second_number = take input as integer
# PRINT each operation 

# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103

first_number = take_input("Enter the first number").to_i
second_number = take_input("Enter the second number").to_i

puts "#{first_number} + #{second_number} = #{first_number + second_number}"
puts "#{first_number} - #{second_number} = #{first_number - second_number}"
puts "#{first_number} * #{second_number} = #{first_number * second_number}"
puts "#{first_number} / #{second_number} = #{first_number / second_number}"
puts "#{first_number} % #{second_number} = #{first_number % second_number}"
puts "#{first_number} ** #{second_number} = #{first_number ** second_number}"







