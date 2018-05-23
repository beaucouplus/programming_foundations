# Write a method that takes a string argument and returns a new string that
# contains the value of the original string with all consecutive duplicate
# characters collapsed into a single character.

# You may not use String#squeeze
# or String#squeeze!.

# i need to 🔅split the string into characters
# i also need to create an 🔅empty string
# i need to 🔅iterate over characters and add them one by one to the new string
# if the 🔅last character of the new string is 🔅equal to the 🔅current char,
# i don't push it
# else i push
# finally, i return the new string

def crunch(string)
  result = ''
  string.chars.each do |char|
   result << char unless result.chars.last == char
 end
 result
end


p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''