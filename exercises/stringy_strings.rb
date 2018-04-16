# Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s,
# always starting with 1. The length of the string should match the given integer.

# given a positive integer
# create an empty string
# counting from 1 to the argument, add either 1 or 0 to the string is number is odd / pair

#Modify stringy so it takes an optional argument that defaults to 1.
#If the method is called with this argument set to 0, the method should return a String of alternating 0s and 1s,
#but starting with 0 instead of 1.

# add optional argument that defaults to 1 (should be "first number")
# add condition to handle the new case if first_number == 1 > else

def stringy(number, first_number = 1)
  text = ""
  (1..number).each do |num|
    if first_number == 1
      num.odd? ? text += 1.to_s : text += 0.to_s
    else
      num.odd? ? text += 0.to_s : text += 1.to_s
    end
  end
  text
end


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

puts stringy(4,0) == "0101"
