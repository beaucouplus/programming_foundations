# A featured number (something unique to this exercise) is an odd number that is
# a multiple of 7, and whose digits occur exactly once each. So, for example, 49
# is a featured number, but 98 is not (it is not odd), 97 is not (it is not a
# multiple of 7), and 133 is not (the digit 3 appears twice).

# Write a method that takes a single integer as an argument, and returns the
# next featured number that is greater than the argument. Issue an error message
# if there is no next featured number.

# rules :
# odd number
# multiple of 7
# only one digit appearance

# loop and add 7
# break if number responds to every rule

# get closest product of 7 from our argument number
# number - (number % 7)

# loop
# add 7 until meets every requirement

ERROR_MSG = "There is no possible number that fulfills those requirements"

def appears_once?(num)
  num.to_s.chars.all? { |digit| num.to_s.count(digit) == 1 }
end

def multiple_of_7?(num)
  (num % 7).zero?
end

def featured(number)
  raise ArgumentError.new(ERROR_MSG) if number.to_s.size > 9
  candidate = number - (number % 7)
  loop do
    candidate += 7
    break if appears_once?(candidate) && multiple_of_7?(candidate) &&
                       candidate.odd?
  end
  candidate
end


p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
