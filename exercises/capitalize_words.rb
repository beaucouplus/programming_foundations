# Write a method that takes a single String argument and returns a new string
# that contains the original value of the argument with the first character of
# every word capitalized and all other letters lowercase.

# You may assume that words are any sequence of non-blank characters.

# split string to array of words
# map array to capitalize each word
# join with space
require 'pry'


def word_cap(string)
  string.split(' ').map(&:capitalize).join(' ')
end


UPPERCASE = ("A".."Z").to_a.freeze
LOWERCASE = ("a".."z").to_a.freeze

# find index of item in LOWERCASE list
# use this index to retrieve the capital one in UPPERCASE
# return it

def not_in_alphabet?(letter)
  !UPPERCASE.include?(letter) && !LOWERCASE.include?(letter)
end

def find_capital_letter(letter)
  return letter if UPPERCASE.include?(letter)
  return letter if not_in_alphabet?(letter)
  UPPERCASE.at(LOWERCASE.index(letter))
end

def find_lowercase_letter(letter)
  return letter if LOWERCASE.include?(letter)
  return letter if not_in_alphabet?(letter)
  LOWERCASE.at(UPPERCASE.index(letter))
end

def to_downcase(word)
  new_word = ""
  word.chars.each do |letter|
    new_word << find_lowercase_letter(letter)
  end
  new_word
end

  def capitalizer(word)
    word = to_downcase(word)
    word[0] = find_capital_letter(word[0])
    word
  end

  def word_cap(string)
    string.split(' ').map { |word| capitalizer(word) }.join(' ')
  end

  p word_cap('four score and seven') == 'Four Score And Seven'
  p word_cap('the javaScript language') == 'The Javascript Language'
  p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
