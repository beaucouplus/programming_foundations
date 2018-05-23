# Write a method that takes a String as an argument, and returns a new String
# that contains the original value using a staggered capitalization scheme in
# which every other character is capitalized, and the remaining characters are
# lowercase. Characters that are not letters should not be changed, but count as
# characters when switching between upper and lowercase.

# every character with an odd index should be changed
# i need to get 🔅chars from the string
# i need to iterate on these chars, with 🔅index > it will be a 🔅map
# if the index is 🔅even, apply 🔅upcase to the letter

def staggered_case(string)
  string.chars.map.with_index { |letter, idx| idx.odd? ? letter.downcase : letter.upcase }.join
end

p staggered_case('I Love Launch School!')
p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'