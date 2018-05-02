# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...)
# such that the first 2 numbers are 1 by definition, and each subsequent number
# is the sum of the two previous numbers. This series appears throughout the
# natural world.

# Computationally, the Fibonacci series is a very simple series, but the results
# grow at an incredibly rapid rate. For example, the 100th Fibonacci number is
# 354,224,848,179,261,915,075 -- that's enormous, especially considering that it
# takes 6 iterations before it generates the first 2 digit number.

# Write a method that calculates and returns the index of the first Fibonacci
# number that has the number of digits specified as an argument. (The first
# Fibonacci number has index 1.)

require 'pry'
TEN = 10

def fibonacci(number, cache)
  cache[number] ||= fibonacci(number - 1, cache) + fibonacci(number - 2, cache)
end

# binding.pry

def find_fibonacci_index_by_length(num)
  target_number = TEN ** (num - 1)
  counter = 1
  cache = { 1 => 1, 2 => 1 }
  loop do
    result = fibonacci(counter, cache)
    break if result >= target_number
    counter += 1
  end
  counter
end

# loop on fibonacci numbers
# keep track of the index
# check if the number divided by powers of ten if inferior to ten
# to check that : 10**length - 1
# break an return index

p find_fibonacci_index_by_length(2)

p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
