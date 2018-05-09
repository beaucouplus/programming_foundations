# Write a method that takes an integer argument, and returns an Array of all
# integers, in sequence, between 1 and the argument.

# You may assume that the argument will always be a valid integer that is
# greater than 0.

# create a range from 1 to integer and transform into array

# 
# if num <= zero, reverse the range order
# 

def sequence(number)
  range = number <= 0 ? (number..1) : (1..number)
  range.to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]

p sequence(-1)
p sequence(0)