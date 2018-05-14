# A triangle is classified as follows:

# equilateral All 3 sides are of equal length
# isosceles 2 sides are of equal length, while the 3rd is different
# scalene All 3 sides are of different length
# To be a valid triangle, the sum of the lengths of the two shortest sides must
# be greater than the length of the longest side, and all sides must have
# lengths greater than 0: if either of these conditions is not satisfied, the
# triangle is invalid.

# Write a method that takes the lengths of the 3 sides of a triangle as
# arguments, and returns a symbol :equilateral, :isosceles, :scalene, or
# :invalid depending on whether the triangle is equilateral, isosceles, scalene,
# or invalid.

def triangle(first, second, third)
  sides = [first, second, third]
  return :invalid if sides.include?(0) || sides.sort.last > sides.sort.first(2).sum
  return :equilateral if sides.count(sides.first) == sides.size
  return :isosceles if sides.count(sides.first) == 2 || sides.count(sides[1]) == 2
  :scalene
end

# keep every param in an array
# return :invalid if one of the values is zero
# return :invalid if the ordered array.pop is > to the sum of the remaining
# sizes
# return :equilateral is first.item count == array.size
# return :isoceles if 2 items are the sames





p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid