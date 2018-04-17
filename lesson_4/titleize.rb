words = "the flintstones rock"

def titleize(sentence)
  words = sentence.split
  words.map { |word| word.capitalize }.join(' ')
end

p titleize(words)
