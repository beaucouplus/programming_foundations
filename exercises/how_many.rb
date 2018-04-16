# given an array of strings
# count occurences of each string then print them

# hash seems a good solution
#for each item, either create a new hash couple with a value of 1 or add 1 to the hash key already present.


vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurrences(arr)
  vehicles = arr.each_with_object(Hash.new(0)) { |vehicle,occurrences| occurrences[vehicle] += 1 }
  vehicles.each { |vehicle, count| puts "#{vehicle} => #{count}" }
end

count_occurrences(vehicles)

#output
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2
