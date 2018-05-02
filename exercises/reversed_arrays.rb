# Write a method that takes an Array as an argument, and reverses its elements
# in place; that is, mutate the Array passed into this method. The return value
# should be the same Array object.

# loop on array
# take first item before the end
# take it from array
# indexes 0 1 2 3
require 'pry'

def reverse!(arr)
  idx = - 2
  iterations = arr.size - 1
  iterations.times do
    removed = arr.delete_at(idx)
    arr << removed
    idx -= 1
  end
  arr
end

list = [1, 2, 3, 4]
result = reverse!(list) # => [4,3,2,1]
p list
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b c d e)
reverse!(list) # => ["e", "d", "c", "b", "a"]
p list == ["e", "d", "c", "b", "a"]

list = ['abc']
reverse!(list) # => ["abc"]
p list == ["abc"]

list = []
reverse!(list) # => []
p list == []
