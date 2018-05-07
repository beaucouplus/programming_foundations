# Write a method that returns a list of all substrings of a string. The returned
# list should be ordered by where in the string the substring begins. This means
# that all substrings that start at position 0 should come first, then all
# substrings that start at position 1, and so on. Since multiple substrings will
# occur at each position, the substrings at a given position should be returned
# in order from shortest to longest.

# You may (and should) use the substrings_at_start method you wrote in the
# previous exercise:
require 'pry'

def substrings_at_start(string)
  result = []
  number_of_letters = 1
  loop do 
    result << string[0, number_of_letters]
    number_of_letters += 1
    break if number_of_letters >= string.size + 1
  end
  result
end

def substrings(string)
  result = []
  count = string.size
  idx = 0
  count.times do
    result << substrings_at_start(string[idx,count])
    idx += 1
  end
  result.flatten
end

p substrings('abcde')
p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]