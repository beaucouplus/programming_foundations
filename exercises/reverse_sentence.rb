require 'pry'

def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = ''

  i = 0
  # binding.pry
  while i < words.length
    reversed_words = words[i] + ' ' + reversed_words
    i += 1
  end

  reversed_words.chop #.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'