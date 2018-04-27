# Write a method that takes an Array of numbers, and returns an Array with the
# same number of elements, and each element has the running total from the
# original Array.

# i want to sum every item in the array until the current index and overwrite
#  the current index with the return value
# one solution would be to map with index and use
# arr[beginning, current index + 1] to get every value since the beginning

def running_total(arr)
  arr.map.with_index { |_, idx| arr[0, idx + 1].sum }
end

# the correction version is way easier.
def running_total(arr)
  sum = 0
  arr.map { |value| sum += value }
end

# Try solving this problem using Array#each_with_object or Enumerable#inject
# (note that Enumerable methods can be applied to Arrays).

def running_total(arr)
  sum = 0
  arr.each_with_object([]) do |num, result|
    sum += num
    result << sum
  end
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
