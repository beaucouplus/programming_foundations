# Write a method that combines two Arrays passed in as arguments, and returns a
# new Array that contains all elements from both Array arguments, with the
# elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they have the
# same number of elements.

# create an empty array
# loop on both arrays at the same time to get the same index
# push to empty array the content at first_arr and content at second_arr
# sharing the index
# return the now full array

# SET new_arr = new array
# SET idx = 0
# LOOP
#   push first_array[idx] to new_arr
#   push second_array[idx] to new_arr
#   idx += 1
#   break if idx == first_arr.size
# RETURN new_array

def interleave(first_arr, second_arr)
  new_array = []
  idx = 0
  loop do
    new_array << first_arr[idx] << second_arr[idx]
    idx += 1
    break if idx == first_arr.size
  end
  new_array
end


def interleave_with_zip(first_arr, second_arr)
  first_arr.zip(second_arr).flatten
end



p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
p interleave_with_zip([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']