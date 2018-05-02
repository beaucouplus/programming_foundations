# Write a method that takes a string argument and returns a new string that
# contains the value of the original string with all consecutive duplicate
# characters collapsed into a single character. You may not use String#squeeze
# or String#squeeze!.
require 'pry'

# split sentence into an array of chars
# set result = create an empty array
# take the first character of the array and remove it from the splitted array
# if the last char in result is equal to the first of the remaining
# do not push it to the result array
# else push it

def crunch(sentence)
  result = sentence.chars.each_with_object([]) do |char, arr|
    arr << char if arr.last != char
  end

  result.join
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''