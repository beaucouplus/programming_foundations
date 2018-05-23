# Build a program that displays when the user will retire and how many years she
# has to work till retirement.

# take input for the age > variable
# take input for the desired retirement > variable
# convert the string, to integer
# create a new date object, and get the year from it
# retirement minus age + current year
# return a string
def retire
puts "What is your age?"  
age = gets.chomp.to_i
puts "When do you want to retire?"
desired_retirement = gets.chomp.to_i

current_year = Time.now.year

years_before_retirement = desired_retirement - age
retirement_year = current_year + years_before_retirement

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{years_before_retirement} years of work to go!"
end

retire
# EXAMPLE
# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!