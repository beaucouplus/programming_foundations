

def multiply(number1, number2)
  number1 * number2
end

def square(number)
  multiply(number, number)
end

p square(5) == 25
p square(-8) == 64

def power(number, power)
  result = number
  power = power - 1
  power.times do
    result = multiply(result, number)
  end
  result
end

p power(3,3) == 27
p power(2,4) == 16
p power(5,4) == 625
