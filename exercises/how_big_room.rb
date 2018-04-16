# Build a program that asks a user for the length and width of a room in meters
# and then displays the area of the room in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

# START
# SET SQUARE_FEET_RATIO = 10.7639 meters
# PRINT asking length
# SET length = GET length in meters
# print asking width
# SET width = GET width in meters
# SET square_meters = width * length
# SET square_feet = square_meters * SQUARE_FEET
# PRINT "The area of the room is square_meters square meters (square_feet square feet)."
# END

SQ_METER_TO_SQ_FEET = 10.7639
SQ_FEET_TO_SQ_CM = 929.03
SQ_FEET_TO_SQ_INCHES = 144


def meters_to_feet
  puts "Enter the length of the room in meters:"
  length = gets.chomp
  puts "Enter the width of the room in meters:"
  width = gets.chomp
  square_meters = length.to_i * width.to_i
  square_feet = SQ_METER_TO_SQ_FEET * square_meters
  puts "The area of the room is #{square_meters} square meters (#{square_feet.round(2)} square feet)."
end

# NEED square to inch

def feet_to_smaller_values
  puts "Enter the length of the room in feet"
  length = gets.chomp
  puts "Enter the width of the room in feet"
  width = gets.chomp
  square_feet = length.to_i * width.to_i
  square_cm = (square_feet * SQ_FEET_TO_SQ_CM).round(2)
  square_inches = (square_feet * SQ_FEET_TO_SQ_INCHES).round(2)
  puts "The area of the room is #{square_feet} square feet."
  puts "The area of the room is #{square_cm} square centimeters"
  puts "The area of the room is #{square_inches} square centimeters"
end

feet_to_smaller_values
