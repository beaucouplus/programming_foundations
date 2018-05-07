# Write a method that returns the next to last word in the String passed to it
# as an argument.

# Words are any sequence of non-blank characters.

# You may assume that the input String will always contain at least two words.

# split string into words
# return array of index -2
require 'pry'

def penultimate(string)
  string.split(' ')[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'
# Suppose we need a method that retrieves the middle word of a phrase/sentence.
# What edge cases need to be considered? How would you handle those edge cases
# without ignoring them? Write a method that returns the middle word of a phrase
# or sentence. It should handle all of the edge cases you thought of.

def middle_word(string)
  return "this sentence is empty" if !string
  middle = string.split.size / 2
  idx = middle - string.split.size
  string.split(' ')[idx]
end

p middle_word('Launch School is great!')
p middle_word(nil)
p middle_word("coucou")
p middle_word('I am the best dog')



