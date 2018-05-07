# Write a method that returns a list of all substrings of a string that start at
# the beginning of the original string. The return value should be arranged in
# order from shortest to longest substring.

# create empty array
# slice string from beginning and add 1 item at each iteration
# push resulting string to new array
# return array

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

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']