# Challenge: write a method that changes dates in the format 2016-06-17 to the
# format 17.06.2016. You must use a regular expression and should use methods
# described in this section.

def format_date(string)
  return string.split(/-/).reverse.join('.') if string.match(/-/)
  string
end

p format_date('2016-06-17') # -> '17.06.2016'
p format_date('2016/06/17') # -> '2016/06/17' (no change)