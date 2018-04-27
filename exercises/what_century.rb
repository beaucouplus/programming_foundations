require 'pry'
# Write a method that takes a year as input and returns the century. The return
# value should be a string that begins with the century number, and ends with st,
# nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 comprise
# the 20th century.

# i want to divide the param by 100 to get the century
# 2000 / 100 = 20
# IF year % 100 == 0 
# century = (year / 100) #because 2000 is from the last century
# ELSE
# century = (year / 100) + 1

# >> method calculate_century_number(year)


# DEFINE method century(year)
# SET CONSTANT SUFFIXES > create a hash with possible suffixes (th, st, rd, nd)

# calculate_century_number(year)

# DEFINE method find_suffix(century)
# define if century has a size superior to 1
# if it is superior to one, take the two last digits and fetch the suffix in the
# SUFFIXES hash
# by default, return th
# concatenate year + suffix (being careful with types)

SUFFIXES = { 1 => :st, 2 => :nd, 3 => :rd }.freeze
EXCEPTIONS = [11, 12, 13].freeze

def calculate_century_number(year)
  (year % 100).zero? ? year / 100 : (year / 100) + 1
end

def find_suffix(century)
  suffix_number = century % 100
  return :th if EXCEPTIONS.include?(suffix_number)
  last_digit = suffix_number.to_s.chars.last.to_i
  SUFFIXES.fetch(last_digit, :th)
end

def century(year)
  century = calculate_century_number(year)
  suffix = find_suffix(century)
  "#{century}#{suffix}"
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'