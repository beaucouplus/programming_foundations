# recreate array select manually

# i need to create a new array to keep the items from the previous array
# i need to iterate over the collection to get items that match the block
# and push them to the new array

def select(arr, &block)
  result = []
  arr.each { |item| result << item if block.call(item) }
  result
end

p select([1,2,3,4,5]) { |item| item > 3 }
