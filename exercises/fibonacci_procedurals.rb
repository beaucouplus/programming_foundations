
# F(1) = 1
# F(2) = 1
# F(n) = F(n - 1) + F(n - 2) where n > 2
require 'pry'
# 0, 1, 1, 2, 3, 5, 8, 13, 21

def fibonacci(num)
  return 1 if num <= 2
  fibz = [1,2]
  (num -3).times do 
    fibz << fibz.last(2).sum
  end
  fibz.last
end

def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end

p fibonacci(3)
p fibonacci(5)
p fibonacci(12)
p fibonacci(20) == 6765

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501