# Write a method which takes a grocery list (array) of fruits with quantities
# and converts it into an array of the correct number of each fruit.

# set result as an array (empty)
# iterate over fruits array
# for each item, item.last times push item.first to result array
# return result array


def buy_fruit(fruits)
  fruits.each_with_object([]) do |fruit, result|
    fruit.last.times { result << fruit.first }
  end
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
