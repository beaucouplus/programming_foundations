#1
# Turn this array into a hash where the names are the keys
# and the values are the positions in the array.
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# > create an empty hash
# > loop on object and keep index
# > set key of hash to current index and value to current value

var = flintstones.each_with_object({}).with_index do |(item,hsh),idx|
  hsh[idx] = item
end

flint_hash = {}
flintstones.each_with_index do |item,idx|
  flint_hash[idx] = item
end
p flint_hash

# 7
# Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"

# loop on letters
# create a hash
# create a new entry in hash with letter as key and either value 0 or + 1

letters_hash = statement.chars.each_with_object(Hash.new(0)) do |letter, hsh|
  hsh[letter] += 1
end
p letters_hash
