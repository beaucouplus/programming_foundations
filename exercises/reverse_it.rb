# Write a method that takes one argument, a string, and returns the same string with the words in reverse order.

# given a string
# return the words in reverse order

# i need an array
# string.split pour créer l'array
# array understands reverse , puis join avec espace pour recréer le string

def reverse_sentence(sentence)
  sentence.split.reverse.join(" ")
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

# Write a method that takes one argument, a string containing one or more words,
# and returns the given string with all five or more letter words reversed.
# Each string will consist of only letters and spaces.
# Spaces should be included only when more than one word is present.

# given a string
# words : 1 - more
# reverse each 5 characters > word
# only letters and spaces
# spaces only if words > 1

# need to split to make an array
# on each item, map et apply string.reverse if word.size >= 5, else return word
# join to transform to string, then strip to get rid of possible useless spaces

def reverse_words(sentence)
  sentence.split.map { |word| word.size >= 5 ? word.reverse : word }.join(" ").strip
end


puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('     Professional     ')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
