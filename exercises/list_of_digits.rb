# given a number
# output a list of digits
#
# algorithm :
#   > convert number to string
#   > convert the string to an array of characters
#   > map the array and use the map function to_i to transform each string back to an integer

def digit_list(number)
  number.to_s.chars.map(&:to_i)
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
