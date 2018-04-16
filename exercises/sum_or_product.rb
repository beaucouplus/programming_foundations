require_relative 'utils/utils'


number = take_input("Please type a number superior to 0")
one_to_num = (1..number.to_i)
puts "Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

if operation == "s"
  result = one_to_num.reduce(:+)
  op = "sum"
elsif operation == "p"
  result = one_to_num.reduce(:*)
  op = "product"
end

puts "The #{op} of the integers between 1 and #{number} is #{result}."