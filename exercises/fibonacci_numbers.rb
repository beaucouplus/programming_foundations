
# def sum(n)
#   return 1 if n == 1
#   n + sum(n - 1)
# end

# F(1) = 1
# F(2) = 1
# F(n) = F(n - 1) + F(n - 2) where n > 2

def fibonacci(num)
  return 1 if num <= 2
  fibonacci(num - 1) + fibonacci(num - 2)
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765