# Write a method that takes a sentence string as input, and returns the same
# string with any sequence of the words 'zero', 'one', 'two', 'three', 'four',
# 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.
require 'pry'
require_relative 'utils/utils'
# create hash of pairs word digit
# split the string into an array of words
# create an empty string
# iterate over the array of words
# if word is included in digits keys
# return the corresponding digits value
# else return the word

DIGITS = { 
  zero: '0', one: '1', two: '2', three: '3', four: '4', five: '5',
  six: '6', seven: '7', eight: "8", nine: '9' 
}

def add_word_if_no_digit_before(words, word, idx, result)
  result << word unless DIGITS.keys.include?(words[idx -1].to_sym) && word == ' '
end

def word_to_digit(string)
  result = ""
  words = string.split(/\b/)
  words.each_with_index do |word, idx|
    DIGITS.keys.include?(word.to_sym) ? result << DIGITS[word.to_sym] : add_word_if_no_digit_before(words, word, idx, result)
  end
  result
end
p word_to_digit('Please call me at five five five one two three four. Thanks.')
p word_to_digit('Please call me at five five five one two three four. Thanks.') ==
'Please call me at 5 5 5 1 2 3 4. Thanks.'