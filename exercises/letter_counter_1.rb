# Write a method that takes a string with one or more space separated words and
# returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

# SET words = split sentence by space
# SET letters_numbers = map words and tr by count
# iterate over letters_numbers and either create a hash key with 1 or
# update with one more

def word_sizes(sentence)
  words = sentence.split(' ')
  letter_numbers = words.map(&:size)
  letter_numbers.each_with_object(Hash.new(0)) do |count, hsh|
    hsh[count] += 1
  end
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
