# Write a method that takes a string as an argument and returns a new string in
# which every uppercase letter is replaced by its lowercase version, and every
# lowercase letter by its uppercase version. All other characters should be
# unchanged.

# You may not use String#swapcase; write your own version of this method.

UPPERCASE = ("A".."Z").to_a.freeze
LOWERCASE = ("a".."z").to_a.freeze

def not_in_alphabet?(letter)
  !UPPERCASE.include?(letter) && !LOWERCASE.include?(letter)
end

def swap_case_of_letter(letter)
  return letter if not_in_alphabet?(letter)
  return LOWERCASE.at(UPPERCASE.index(letter)) if UPPERCASE.include?(letter)
  UPPERCASE.at(LOWERCASE.index(letter))
end

def swapcase(string)
  string.chars.map { |letter| swap_case_of_letter(letter) }.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'