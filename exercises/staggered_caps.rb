# Write a method that takes a String as an argument, and returns a new String
# that contains the original value using a staggered capitalization scheme in
# which every other character is capitalized, and the remaining characters are
# lowercase. Characters that are not letters should not be changed, but count as
# characters when switching between upper and lowercase.


# split sentence to chars
# partition array by selecting chars at even positions (with each with index)
# map first_arr and apply upcase
# zip first_arr with second_arr

def staggered_case(string)
  even, odd = string.chars.partition.with_index { |_, idx| idx.even? }
  upcased = even.map(&:upcase)
  downcased = odd.map(&:downcase)
  upcased.zip(downcased).flatten.join
end

def switch_case(arr, first = :up)
  new_arr = []
  if first == :up
    new_arr << arr[0].map(&:upcase) << arr[1].map(&:downcase)
  else
    new_arr << arr[0].map(&:downcase) << arr[1].map(&:upcase)
  end
  new_arr
end

def staggered_case(string, first = :up)
  even_and_odd = string.chars.partition.with_index { |_, idx| idx.even? }
  switched = switch_case(even_and_odd, first)
  switched[0].zip(switched[1]).flatten.join
end

p staggered_case('I Love Launch School!', :down)

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
