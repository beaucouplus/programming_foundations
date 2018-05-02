require 'pry'

def reverse(arr)
  new_arr = []
  idx = - 1
  iterations = arr.size
  iterations.times do
    taken = arr[idx]
    new_arr << taken
    idx -= 1
  end
  new_arr
end

def reverse(arr)
  arr.each_with_object([]) { |item, new_arr| new_arr.unshift(item) }
end



p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b c d e)) == %w(e d c b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 2, 3]                      # => [1, 2, 3]
new_list = reverse(list)              # => [3, 2, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 2, 3]                     # => true
p new_list == [3, 2, 1]                 # => true
