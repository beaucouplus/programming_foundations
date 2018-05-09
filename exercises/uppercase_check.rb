# Write a method that takes a string argument, and returns true if all of the
# alphabetic characters inside the string are uppercase, false otherwise.
# Characters that are not alphabetic should be ignored.

# set a constant with every lowercase letters
# split string to chars
# apply all? and check if any lowercase


LOWER = ('a'..'z').to_a

def uppercase?(string)
  string.chars.all? { |char| !LOWER.include?(char) }
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true