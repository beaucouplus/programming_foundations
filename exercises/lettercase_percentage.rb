# Lettercase Percentage Ratio In the easy exercises, we worked on a problem
# where we had to count the number of uppercase and lowercase characters, as
# well as characters that were neither of those two. Now we want to go one step
# further.

# Write a method that takes a string, and then returns a hash that contains 3
# entries: one represents the percentage of characters in the string that are
# lowercase letters, one the percentage of characters that are uppercase
# letters, and one the percentage of characters that are neither.

# You may assume that the string will always contain at least one character.
require 'pry'
require_relative 'lettercase_counter'

# return the hash from letter_case_count(string)
# sum the values of this hash and divide into percent (WITH FLOAT)
# return new hash with percent

def letter_percentages(string)
  letter_case_count = letter_case_count(string)
  result = {}
  letter_case_count.each do |type, num|
    result[type] = (num / letter_case_count.values.sum.to_f * 100).round(1)
  end
  result
end
p letter_percentages('abCdef 123')

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
