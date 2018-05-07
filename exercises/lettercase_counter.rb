# Write a method that takes a string, and then returns a hash that contains 3
# entries: one represents the number of characters in the string that are
# lowercase letters, one the number of characters that are uppercase letters,
# and one the number of characters that are neither.

# SET result = an empty hash
# SET UPPERCASE = list of uppercase letters
# set DOWNCASE = list of downcase letters
# push to result[:lowercase] the count of lowercase letters
# push to result[:uppercase] the count of uppercase letters
# push to result[:neither] the remaining chars

# note : faire ça avec include?

UPPERCASE = ("A".."Z").to_a.freeze
LOWERCASE = ("a".."z").to_a.freeze

def letter_case_count(string)
  result = {}
  result[:lowercase] = string.chars.count { |letter| LOWERCASE.include?(letter) }
  result[:uppercase] = string.chars.count { |letter| UPPERCASE.include?(letter) }
  result[:neither] = string.size - result.values.sum
  result
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }