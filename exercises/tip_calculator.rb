# EXAMPLE
# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0

# START
# SET bill = ""
# WHILE bill is not an integer
#   SET bill = GET bill as integer
#   bill = bill converted to integer

# SET percentage = ""
# WHILE percentage is not an integer
#   SET percentage : GET percentage as integer
#  percentage = percentage converted to float % 100

# SET tip = bill * percentage
# SET total = bill + tip
# PRINT total

require_relative 'utils/utils'

bill = take_input("What is the bill?")
bill = bill.to_i

percentage = take_input("What is the tip percentage?")
percentage = percentage.to_f

tip = ( bill * (percentage / 100) ).round(2)
total = (bill + tip).round(2)

puts "The tip is $#{format('%.2f', tip)}"
puts "The total is $#{sprintf('%.2f', total)}"

