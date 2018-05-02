# Write a method that takes an Array as an argument, and returns two Arrays that
# contain the first half and second half of the original Array, respectively. If
# the original array contains an odd number of elements, the middle element
# should be placed in the first half Array.


# calculate the middle of the array
# if it is even, keep it
# else add 1 to it
# use drop and take to split in 2
# return the 2 arrays 

def halvsies(arr)
  middle = arr.size / 2
  cut = arr.size.even? ? middle : middle + 1
  a = arr.take(cut)
  b = arr.drop(cut)
  [a, b]
end


p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
