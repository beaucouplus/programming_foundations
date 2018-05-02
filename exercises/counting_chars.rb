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

# on line 13 the puts method invoked displays in the console the string used
# as a parameter, and returns nil.
# on line 14, the variable word is set, it points to the returned result of 
# the method gets, which asks for user input in the console and returns it as
# a string.
# The chomp method chained to gets allows to get rid of line breaks
# Thus, the word variable points to a string object.
# on line 15, several methods are chained together and used on the word string.
# The chars method splits the string into characters and returns an array of 
# these characters.
# This array is then used by the method counts which is here called with a block.
# Here, the method counts all letters in the array that are not spaces.
# This is what the call means : count each letter for which the block return
# value is truthy. The result is an integer object, assigned to the variable result.
# the last line displays a string and uses the #{} method to convert the integer
# to a string and return it.
# 
