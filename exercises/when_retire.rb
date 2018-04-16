# Build a program that displays when the user will
# retire and how many years she has to work till retirement.

# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!
#
#START
# SET current_age = GET input
# SET retirement_age = GET input
# SET current_year = get the current year from time
# SET retirement_year = current_year + (retirement_age - current_age)
# PRINT retirement_year

require_relative 'utils/utils'

current_age = take_input("What is your age?")
retirement_age = take_input("At what age would you like to retire?")
current_year = Time.now.year
years_of_work_left = retirement_age.to_i - current_age.to_i
retirement_year = current_year.to_i + years_of_work_left

first_line = "It's #{current_year}. You will retire in #{retirement_year}.\n"
second_line = "You have only #{years_of_work_left} years of work to go!"
puts first_line + second_line
