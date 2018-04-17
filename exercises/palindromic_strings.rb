# Write a method that returns true if the string passed as an argument is a palindrome, false
# otherwise. A palindrome reads the same forward and backward. For this exercise, case matters as does
# punctuation and spaces.

#START
# BEGIN METHOD palindrome?( string )
# SET half = (string size / 2)
# SET middle = half - 1 ( - 1 to handle the index at 0)

# example for 5, odd : middle is 2 , begin is 0, end is 4, half is 2
# example for 9, odd : middle is 4, begin is 0, end is 8, half is 4
# example for 6, even : middle is 2, begin is 0, end is 5, half is 3
# example for 10, even : middle is 4, begin is 0, end is 9, half is 5
# 1234554321

# RETURN true IF string(beginning,half) sorted == string(end, - (half + 1)) sorted 
# END METHOD
# END

def palindrome?(string)
  half = string.size / 2
  middle = half - 1
  return true if string[0,half].chars.sort == string[-half, half].chars.sort
end

def palindrome?(string)
  string == string.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true