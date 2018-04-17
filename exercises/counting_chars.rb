# Write a program that will ask a user for an input of a word or multiple
# words and give back the number of characters. Spaces should not be counted as
# a character.

# START
# SET word = GET input
# LOOP on word CHARS
# get rid of spaces
# count remaining characters
# PRINT result
# END

puts "Enter one or several words"
word = gets.chomp
result = word.chars.count { |letter| letter != " " }
puts "This sentence contains #{result} characters"