# A triangle is classified as follows:

# right One angle of the triangle is a right angle (90 degrees)
# acute All 3 angles of the triangle are less than 90 degrees 
# obtuse One angle is greater than 90 degrees. 

# To be a valid triangle, the sum of the angles must be exactly
# 180 degrees, and all angles must be greater than 0: if either of these
# conditions is not satisfied, the triangle is invalid.

# Write a method that takes the 3 angles of a triangle as arguments, and returns
# a symbol :right, :acute, :obtuse, or :invalid depending on whether the
# triangle is a right, acute, obtuse, or invalid triangle.

# You may assume integer valued angles so you don't have to worry about floating
# point errors. You may also assume that the arguments are specified in degrees.

# :invalid if one angle is 0 OR the sum of the angle is < to 180
  # :right if one the angles is 90
  # :obtuse if one of the angles is > to 90
  # :acute if acute all angles are < 90

def triangle(first_angle, second_angle, third_angle)
  angles = [first_angle, second_angle, third_angle]
  return :invalid if angles.any?(&:zero?) || angles.sum != 180
  return :right   if angles.any? { |angle| angle == 90 }
  return :acute   if angles.all? { |angle| angle < 90 }
  :obtuse
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid