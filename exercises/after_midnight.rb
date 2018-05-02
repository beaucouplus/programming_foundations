# The time of day can be represented as the number of minutes before or after
# midnight. If the number of minutes is positive, the time is after midnight. If
# the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns
# the time of day in 24 hour format (hh:mm). Your method should work with any
# integer input.

# You may not use ruby's Date and Time classes.

# DEFINE time_of_day(number)
# SET hours, minutes = get quotient and modulus of number / by 60 & keep them
# SET hour = get quotient & modulus of hours, keep modulus
# convert numbers to 2 digits format
# display string with both numbers
# sprintf("%#o", 123)  #=> "0173"
# Examples:

ONE_HOUR = 60
ONE_DAY = 24
WEEK_DAYS = %w(sunday monday tuesday wednesday thursday friday saturday).freeze

def format_number(num)
  num < 10 ? '0' + num.to_s : num.to_s
end

def time_of_day(number)
  hours, minutes = number.divmod(ONE_HOUR)
  days, hour_today = hours.divmod(ONE_DAY)
  day_index = days.divmod(7)[1]
  weekday = WEEK_DAYS[day_index]
  weekday + " "+ format_number(hour_today) + ':' + format_number(minutes)
end

p time_of_day(-1437) 
p time_of_day(3000)
p time_of_day(800)
p time_of_day(-4231) 
p time_of_day(-18765)

p time_of_day(0) == "sunday 00:00"
p time_of_day(-3) == "saturday 23:57"
p time_of_day(35) == "sunday 00:35"
p time_of_day(-1437) == "saturday 00:03"
p time_of_day(3000) == "tuesday 02:00"
p time_of_day(800) == "sunday 13:20"
p time_of_day(-4231) == "thursday 01:29"







# MINUTES_PER_HOUR = 60
# HOURS_PER_DAY = 24
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def time_of_day(delta_minutes)
#   delta_minutes =  delta_minutes % MINUTES_PER_DAY
#   hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
#   format('%02d:%02d', hours, minutes)
# end

