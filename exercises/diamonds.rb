# Write a method that displays a 4-pointed diamond in an n x n grid, where n is
# an odd integer that is supplied as an argument to the method. You may assume
# that the argument will always be an odd integer.


# set middle to get the max number of spaces
# iterate from 1 step 2 to size of the diamond
# range.step(2) {|x| puts x}
# "hello".center(4)

def diamond(size)
  middle = size / 2
  result = []
  (1..size).step(2) { |x| result << "#{'*' * x}".center(size) }
  result = result + result[0, middle].reverse
  puts result
end

def hollow(size)
  return '*' if size <= 1
  '*' + (' ' * (size - 2)) + '*' 
end

def hollow_diamond(size)
  middle = size / 2
  result = []
  (1..size).step(2) { |x| result << hollow(x).center(size) }
  result = result + result[0, middle].reverse
  puts result
end


diamond(1)

# *
hollow_diamond(3)
diamond(3)

#  *
# ***
#  *
diamond(9)
hollow_diamond(9)
#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *