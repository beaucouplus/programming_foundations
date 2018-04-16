#given an integer
# check if it is odd. In maths, it's ok if the remainder is different than zero when divided by 2

def is_odd?(num)
  num % 2 != 0
end

#remainder version
def is_odd?(num)
  num.remainder(2).abs == 1
end



puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true
