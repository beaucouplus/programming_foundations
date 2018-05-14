require 'pry'

# A collection of spelling blocks has two letters per block, as shown in this
# list:

# B:O   X:K   D:Q   C:P   N:A G:T   R:E   F:S   J:W   H:U  V:I   L:Y   Z:M

# This limits the words you can spell with the blocks to just those words that
# do not use both letters from any given block. Each block can only be used
# once.

# Write a method that returns true if the word passed in as an argument can be
# spelled from this set of blocks, false otherwise.

# keep an hash of letters couples
# create an empty array which will be filled with already used letters
# split string into letters
# search each letter inside hash (including values) and append to array of 
# already used letter
# for each letter, return true if not already used

SPELLING_BLOCKS = {
  'B' => 'O', 'X' => 'K', 'D' => 'Q', 'C' => 'P', 'N' => 'A',
  'G' => 'T', 'R' => 'E', 'F' => 'S', 'J' => 'W', 'H' => 'U',
  'V' => 'I', 'L' => 'Y', 'Z' => 'M'
}.freeze

def search_couple_in_spelling_blocks(letter)
  SPELLING_BLOCKS.select do |key, value|
    key == letter || value == letter
  end.to_a.flatten
end

def block_word?(string)
  already_used = []
  string.upcase.chars.each do |char|
    already_used << search_couple_in_spelling_blocks(char)
  end
  string.upcase.chars.all? { |char| already_used.flatten.count(char) == 1 }
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
