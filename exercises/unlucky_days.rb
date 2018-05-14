# Write a method that returns the number of Friday the 13ths in the year given
# by an argument. You may assume that the year is greater than 1752 (when the
# United Kingdom adopted the modern Gregorian Calendar) and that it will remain
# in use for the foreseeable future.
require 'date'
require 'pry'
# get each 13th day of any month in a year
#   > parse date 12 times, with year-month-day
#   > keep that in an array
# select those who happen on friday
# select by applying friday? on those dates
THIRTEEN = 13

def friday_13th(year)
  thirteens = (1..12).each_with_object([]) do |month, arr|
    arr << Date.parse("#{year}#{format('%.2d', month)}#{THIRTEEN}")
  end
  thirteens.select { |day| day.friday? }.count
end

# An interesting variation on this problem is to count the number months that
# have five Fridays. This one is harder than it sounds since you must account
# for leap years.

NORMAL_YEAR = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31].freeze
LEAP_YEAR = [31, 29] + NORMAL_YEAR[2..-1]
LAST_POSSIBLE_DAY_TO_HAVE_5_FRIDAYS = { 31 => 3, 30 => 2, 29 => 1, 28 => 0 }.freeze

# take in count account leap year. If leap, use LEAP constant, else NORMAL
# create an array with each 1st friday DAY of the month
# select days where last possible day is equal or > to current_day
# i need to use the index to use the constants
def five_fridays(year)
  Date.new(year).leap? ? days_per_month = LEAP_YEAR : days_per_month = NORMAL_YEAR

  first_fridays = (1..12).each_with_object([]) do |month, arr|
    (1..7).each do |day|
      date = Date.parse("#{year}#{format('%.2d', month)}#{format('%.2d', day)}")
      arr << date.mday if date.friday?
    end
  end

  first_fridays.select.with_index do |day, idx|
    day <= LAST_POSSIBLE_DAY_TO_HAVE_5_FRIDAYS[days_per_month[idx]]
  end.count

  # loop from 1 to 7
  # break and push day to array of days if day is friday

end
p "------"
(2000..2018).each { |year| p five_fridays(year) }
p "------"


p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2


p "------"
(2000..2018).each { |year| p five_friday_months(year) }
p "------"
