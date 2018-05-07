# Write a method that takes a string, and returns a new string in which every
# character is doubled.

# create empty array
# split string to chars
# for each char, double it with *
# join array

def repeater(word)
  word.chars.map { |char| char * 2 }.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''

# Write a method that takes a string, and returns a new string in which every
# consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and
# whitespace should not be doubled.
CONSONANTS = ("a".."z").to_a + ("A".."Z").to_a - "aieouAEIOU".chars

def double_consonants(string)
  string.chars.map do |char|
    next char unless CONSONANTS.include?(char)
    char * 2
  end.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""