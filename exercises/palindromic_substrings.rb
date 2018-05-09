# Write a method that returns a list of all substrings of a string that are
# palindromic. That is, each substring must consist of the same sequence of
# characters forwards as it does backwards. The return value should be arranged
# in the same sequence as the substrings appear in the string. Duplicate
# palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous
# exercise.

# For the purposes of this exercise, you should consider all characters and pay
# attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor
# "Abc-bA" are. In addition, assume that single characters are not palindromes.


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

def palindrome?(string)
  string == string.reverse
end

# get all substrings from string, keep it 
# remove all strings of 1 char
# select every item that is palindromic

def palindromes(string)
  substrings = substrings(string)
  substrings.select { |item| item.size > 1 && palindrome?(item) }
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]