# Given a string of words separated by spaces, write a method that takes this
# string of words and returns a string in which the first and last letters of
# every word is swapped.

# You may assume that every word contains at least one letter, and that the
# string will always contain at least one word. You may also assume that each
# string contains nothing but words and spaces


# only the first and last letters are exchanged
# 1. i need to 🔰 split the string into an array of words
# 2. i need to 🔰split each word into chars and exchange letters. I will do that
# with 🔰 MAP
# 3. to exchange letters in need to 🔰assign the first index to the last index AND
# the last index to the first index
# I need to 🔰join the result to return it as a string

def swap(string)
  splitted = string.split
  swapped = splitted.map do |word|
    word[0], word[-1] = word[-1], word[0]
    word
  end
  swapped.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
