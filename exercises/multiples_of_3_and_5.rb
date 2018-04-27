# Write a method that searches for all multiples of 3 or 5 that lie between 1
# and some other number, and then computes the sum of those multiples. For
# instance, if the supplied number is 20, the result should be 98  (3 + 5 + 6 +
# 9 + 10 + 12 + 15 + 18 + 20).

# I want to sum up all the multiples of 3 or 5 between 1 and the selected
# number

# list every number between 1 and the limit
# select only the numbers that are / 3 and 5
# sum these numbers
# return the sum

def multisum(limit)
  (1..limit).select { |num| (num % 3).zero? || (num % 5).zero? }.sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168