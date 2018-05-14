def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end

# In this exercise, you are going to compute a method that returns the last
# digit of the nth Fibonacci number.



def fibonacci_last(nth)
  fibonacci(nth).divmod(10).last
end

# def fibonacci_last(nth)
#   last_2 = [1, 1]
#   3.upto(nth) do
#     last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
#     p last_2
#   end

#   last_2.last
# end


SUMS = {
  0 => [1, 2, 3, 4, 5, 6, 7, 8, 9, 0],
  1 => [2, 3, 4, 5, 6, 7, 8, 9, 0, 1],
  2 => [3, 4, 5, 6, 7, 8, 9, 0, 1, 2],
  3 => [4, 5, 6, 7, 8, 9, 0, 1, 2, 3],
  4 => [5, 6, 7, 8, 9, 0, 1, 2, 3, 4],
  5 => [6, 7, 8, 9, 0, 1, 2, 3, 4, 5],
  6 => [7, 8, 9, 0, 1, 2, 3, 4, 5, 6],
  7 => [8, 9, 0, 1, 2, 3, 4, 5, 6, 7],
  8 => [9, 0, 1, 2, 3, 4, 5, 6, 7, 8],
  9 => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
}.freeze

def fibonacci_last(nth)
  last_2 = [1, 1]
  nth %= 60
  3.upto(nth) do
    last_2 = [last_2.last, SUMS[last_2.first][last_2.last - 1]]
  end

  last_2.last
end


p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4
p fibonacci_last(123_456_789_987_745) # -> 5