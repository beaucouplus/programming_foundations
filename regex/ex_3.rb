# Write a method that changes the first arithmetic operator (+, -, *, /) in a
# string to a '?' and returns the resulting string. Don't modify the original
# string.

def mystery_math(operation)
  # create a regex detecting + - * /
  # use gsub to return a new string
  operation.sub(/\B[+?\-?\*?\/?]\B/, '?')
end

p mystery_math('4 + 3 - 5 = 2')
# -> '4 ? 3 - 5 = 2'

p mystery_math('(4 * 3 + 2) / 7 - 1 = 1')
# -> '(4 ? 3 + 2) / 7 - 1 = 1'

def mysterious_math(operation)
  operation.gsub(/\B[+?\-?\*?\/?]\B/, '?')
end

p mysterious_math('4 + 3 - 5 = 2')           # -> '4 ? 3 ? 5 = 2'
p mysterious_math('(4 * 3 + 2) / 7 - 1 = 1') # -> '(4 ? 3 ? 2) ? 7 ? 1 = 1'