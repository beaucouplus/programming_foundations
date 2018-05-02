# Modify the word_sizes method from the previous exercise to exclude non-letters
# when determining word size. For instance, the length of "it's" is 3, not 4.
require 'pry'
VALID_CHARS = ("a".."z").to_a + ("0".."9").to_a

def exclude_non_letters(words)
  words.map do |word|
    word.chars.select { |letter| VALID_CHARS.include?(letter.downcase) }.join
  end
end

def word_sizes(sentence)
  words = sentence.split(' ')
  words = exclude_non_letters(words)
  words.each_with_object(Hash.new(0)) do |count, hsh|
    hsh[count.size] += 1
  end
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}

