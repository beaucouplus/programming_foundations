#How would you order this array of number strings by descending numeric value?
arr = ['10', '11', '9', '7', '8']

# by doing a sort where b <=> a
arr.sort { |a, b| b.to_i <=> a.to_i }


# How would you order this array of hashes based on the year of publication of each book, from the
# earliest to the latest?
books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

# steps
# sort a[:puslished].to_i <=> b[:published].to_i
books.sort { |a, b| a[:published].to_i <=> b[:published].to_i }

# figure out the total age of just the male members of the family.
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.select { |_, attributes| attributes["gender"] == "male" }
.map { |_, value| value["age"] }.sum

# (Name) is a (age)-year-old (male or female).
munsters.each do |member, attrib|
  puts "#{member} is a #{attrib["age"]}-year-old #{attrib["gender"]}"
end

hsh = { first: ['the', 'quick'], second: ['brown', 'fox'],
        third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog'] }


vowels = "aeiou"
hsh.each do |_, value|
  value.join.chars.each { |letter| puts letter if vowels.include?(letter) }
end


# Given this data structure, return a new array of the same structure but with the sub arrays being
# ordered (alphabetically or numerically as appropriate) in descending order.

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# map then sort for each sub array

p arr.map { |sub| sub.sort { |a, b| b <=> a } }


# Given the following data structure and without modifying the original array, use the map method to
# return a new array identical in structure to the original but where the value of each integer is
# incremented by 1.

data = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# map each sub hash then map each sub value + 1
new_hash = data.map do |hsh|
  new_hash = {}
  hsh.each do |key, value|
    new_hash[key] = value + 1
  end
  new_hash
end
# p new_hash
# p data

# Given the following data structure use a combination of methods, including either the select or
# reject method, to return a new array identical in structure to the original but containing only the
# integers that are multiples of 3.

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

# we do map to return the same structure, then select on sub to return only multiples of 3

p arr.map { |subarr| subarr.select { |num| num % 3 == 0 }}


# Given the following data structure, and without using the Array#to_h method, write some code that
# will return a hash where the key is the first item in each sub array and the value is the second
# item.

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

# SET hsh = create an empty hash (with object ?)
# loop on array with each
# for each sub_array
# hsh with key sub_array.first = sub_array.last
# END

my_hash = arr.each_with_object({}) do |sub_array, hsh|
  hsh[sub_array.first] = sub_array.last
end
p my_hash

# Given the following data structure, return a new array containing the same sub-arrays as the
# original but ordered logically according to the numeric value of the odd integers they contain.

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

# perform super custom sort
# SUPER CUSTOM SORT
# > a <=> b if a[2] <=> b[2]

sorted = arr.sort { |a, b| a[2] <=> b[2] }
p sorted == [[1, 8, 3], [1, 6, 7], [1, 4, 9]] # => true



# Given this data structure write some code to return an array containing the colors of the fruits and
# the sizes of the vegetables. The sizes should be uppercase and the colors should be capitalized.

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

# SET new array
# perform each on hsh values
# IF type is fruit
#  push colors to new array
#  ELSE
#  push size to new array


returned = hsh.values.each_with_object([]) do |sub_hash, ary|
  p sub_hash
  if sub_hash[:type] == 'fruit'
    ary << sub_hash[:colors].map(&:capitalize)
  else
    ary << sub_hash[:size].upcase
  end
end

p returned
p returned == [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]


# Given this data structure write some code to return an array which contains only the hashes where
# all the integers are even.

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

# SET even_only = new array
# perform SELECT on original array where each hash VALUE contains only even number
# SELECT > hash.each > array.value.all? even numbers only

selected = arr.select do |hsh|
  hsh.all? do |_, ary|
    ary.all? { |num| num.even? }
  end
end

p "====="
p selected
