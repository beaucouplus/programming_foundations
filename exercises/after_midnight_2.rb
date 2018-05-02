# As seen in the previous exercise, the time of day can be represented as the
# number of minutes before or after midnight. If the number of minutes is
# positive, the time is after midnight. If the number of minutes is negative,
# the time is before midnight.

# Write two methods that each take a time of day in 24 hour format, and return
# the number of minutes before and after midnight, respectively. Both methods
# should return a value in the range 0..1439.

# split the string by : and map the result to get integers
# 


MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = 1440

def after_midnight(string)
  return 0 if string == '24:00'
  hours, minutes = string.split(":").map(&:to_i)
  (hours * MINUTES_PER_HOUR) + minutes
end

def before_midnight(string)
  return 0 if string == '24:00' || string == '00:00'
  MINUTES_PER_DAY - after_midnight(string)
end


p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0