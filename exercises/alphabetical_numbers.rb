# Write a method that takes an Array of Integers between 0 and 19, and returns
# an Array of those Integers sorted based on the English words for each number:

# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven,
# twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

# create an array with every word corresponding to the number, orded correctly
# so that array[0] = "zero"
# set another array to handle the sorting. since it will modify the order, the
# first array will be the reference.
# Our mission is to get the index from the first array with the help of the 
# sorted array
# we can map the second array and return it as a result of the method

ZERO_TO_NINETEEN = %w(zero one two three four five six seven eight nine ten
                      eleven twelve thirteen fourteen fifteen sixteen seveteen
                      eighteen nineteen).freeze

def alphabetic_number_sort(ary)
   ary.sort { |a,b| ZERO_TO_NINETEEN[a] <=> ZERO_TO_NINETEEN[b] }
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]