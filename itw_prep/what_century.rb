# Write a method that takes a year as input and returns the century. The return
# value should be a string that begins with the century number, and ends with
# st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000
# comprise the 20th century.

# i want to keep the 2 last numbers from a year
# for example 01 for 2001 or 13 for 1913

# i'll need to convert the integer value to a string
# and get the 2 last chars of the string

# 01 > st
# 02 > nd
# 03 > rd
# afterwards > th

SUFFIXES = { '1' => 'st', '2' => 'nd', '3' => 'rd' }
EXCEPTIONS = ['11','12','13']

def get_suffix(stringed_century)
  return 'th' if EXCEPTIONS.include?(stringed_century.chars.last(2).join)
  SUFFIXES.fetch(stringed_century.chars.last, 'th')
end

def century(year)
  if year % 100 == 0
  century = year / 100
else
  century = (year / 100) + 1
end
  stringed_century = century.to_s
  suffix = get_suffix(stringed_century)
  stringed_century + suffix
end

p century(2000)
p century(256)
p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'