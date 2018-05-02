# Write a method that takes a floating point number that represents an angle
# between 0 and 360 degrees and returns a String that represents that angle in
# degrees, minutes and seconds. You should use a degree symbol (°) to represent
# degrees, a single quote (') to represent minutes, and a double quote (") to
# represent seconds. A degree has 60 minutes, while a minute has 60 seconds.
require 'pry'
DEGREE = "\xC2\xB0"
MIN_OR_SEC = 60
# if degree is float, split it and round to 2
# multiply the result by 60
# if still float, split and round to 2
# remultiply by 60

#

def dms(number)
  number = number.abs
  return "#{number}#{DEGREE}00'00\"" if number.integer?
  degrees, remainder = number.divmod(1)
  remainder = remainder
  minutes, seconds = (MIN_OR_SEC * remainder).divmod(1)
  seconds = (seconds * MIN_OR_SEC).to_i
  format("%02d#{DEGREE}%02d'%02d#{'"'}", degrees, minutes, seconds) #+ "\""
  # binding.pry
end

puts "=== neg ==="
puts dms(-76.73)

puts "=========="
puts dms(254.6)
puts dms(76.73)
puts dms(93.034773)

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")