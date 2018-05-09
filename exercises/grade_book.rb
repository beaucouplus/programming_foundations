# Write a method that determines the mean (average) of the three scores passed
# to it, and returns the letter value associated with that grade.

# Numerical Score Letter  Grade
# 90 <= score <= 100  'A'
# 80 <= score < 90  'B'
# 70 <= score < 80  'C'
# 60 <= score < 70  'D'
# 0 <= score < 60 'F'

require 'pry'

def get_grade(*grades)
  average = grades.sum / grades.size
  return 'A' if average >= 90
  return 'B' if average >= 80
  return 'C' if average >= 70
  return 'D' if average >= 60
  'F'
end

GRADES = { 90 => 'A', 80 => 'B', 70 => 'C', 60 => 'D' }

def get_grade(*grades)
  average = grades.sum / grades.size
  letter = GRADES.select { |score, _| average >= score }.values.first
  return letter if letter
  'F'
end

# get average from array of grades
# return 'A' if score => 90
# repeat for each score


p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"

p get_grade(10, 20, 35) == "F"
p get_grade(10, 20, 35)