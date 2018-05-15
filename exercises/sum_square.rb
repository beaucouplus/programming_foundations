# Write a method that computes the difference between the square of the sum of
# the first n positive integers and the sum of the squares of the first n
# positive integers.

# create a range from 1 to arg
# sum numbers in range and square the result, keep them in a var
# map the range by squaring each number
# return the difference between one and two
# add 

def sum_square_difference(limit)
  numbers = (1..limit).to_a
  numbers.sum**2 - numbers.map { |num| num**2 }.sum
end


p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150