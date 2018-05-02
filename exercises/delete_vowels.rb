# Write a method that takes an array of strings, and returns an array of the
# same string values, except with the vowels (a, e, i, o, u) removed.

# define an array of vowels to handle comparison
# select every char from string which isn't a vowel
# return the new string 

VOWELS = /[aeiouAEIOU]/
def remove_vowels(array)
  array.map { |string| string.gsub(VOWELS, "") }  
end
p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))
p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']