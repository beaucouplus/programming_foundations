require 'pry'
# Given a string that consists of some words and an assortment of non-alphabetic
# characters, write a method that returns that string with all of the non-
# alphabetic characters replaced by spaces. If one or more non-alphabetic
# characters occur in a row, you should only have one space in the result (the
# result should never have consecutive spaces).

# create a an array of valid characters
# split sentence to chars and select only the ones who are included
# in the array of valid chars
# remove unnecessary chars (spaces which are too many)
# >>> i think i will have a problem with the spaces....
# join
SPACE = ' '
VALID_CHARS = ("a".."z").to_a + ("0".."9").to_a + [SPACE]

def remove_bad_chars(letter)
  return letter if VALID_CHARS.include?(letter.downcase)
  SPACE
end

def cleanup(string)
  cleaned = string.chars.map { |letter| remove_bad_chars(letter) }.join
  well_spaced = cleaned.squeeze(SPACE)
end

p cleanup("---what's my +*& line?")

p cleanup("---what's my +*& line?") == ' what s my line '