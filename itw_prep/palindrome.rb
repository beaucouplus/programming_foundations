# "write a method to determine if a word is a palindrome, without using the
# reverse method"


# what is a palindrome?
# a palindrome is a word readable from left to right and from right to left

# abba , radar, abccba, 123321

# we can see that there is a symmetry
# if we find the middle of the word, if what is before the midde is equal
# to what is after reversed (but i cannot use reverse) , it's a palindrome

def reverse(str)
  result = ""
  str.chars.reverse_each { |item| result << item }
  result
end


def palindrome?(string)
  return false if string.empty?
  half = string.size / 2
  before = string[0,half]
  if string.size.odd?
    after = string[half + 1, half]
  else
    after = string[half, half]
  end

  # recreate array reverse and check if it is ok 
  before == reverse(after)
end
p palindrome?('radar') == true
p palindrome?('abba') == true
p palindrome?('launch') == false
p palindrome?('123321') == true
p palindrome?('') == false
p palindrome?('abuab') == false
p palindrome?("abc'cba") == true
