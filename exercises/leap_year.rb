require 'pry'
# In the modern era under the Gregorian Calendar, leap years occur in every year
# that is evenly divisible by 4, unless the year is also divisible by 100. If
# the year is evenly divisible by 100, then it is not a leap year unless the
# year is evenly divisible by 400.

# Assume this rule is good for any year greater than year 0. Write a method that
# takes any year greater than 0 as input, and returns true if the year is a leap
# year, or false if it is not a leap year.

# DEFINE METHOD leap_year?(year)
# ((year % 4).zero? && !(year % 100).zero?) || (year % 4).zero? && (year % 400).zero?

def leap_year?(year)
  notdivisibleby100 = !(year % 100).zero?
  notdivisibleby100 = true if year < 1752
  ((year % 4).zero? && notdivisibleby100) || (year % 400).zero?
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true