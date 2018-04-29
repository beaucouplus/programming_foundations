require_relative 'string_to_number'

# check if first element is either - or +
# keep track of the sign (with if condition certainly)
# apply string to number to remaining array after - or +
# return
#

def remove_sign_if_needed(string)
  return string[1..-1] if string.chars.first == "-" || string.chars.first == "+"
  string
end

def negative?(string)
  string.chars.first == "-"
end

def string_to_signed_integer(string)
  number = remove_sign_if_needed(string)
  return -string_to_number(number) if negative?(string)
  string_to_number(number)
end



p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
