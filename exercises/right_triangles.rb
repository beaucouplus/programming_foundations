# Write a method that takes a positive integer, n, as an argument, and displays
# a right triangle whose sides each have n stars. The hypotenuse of the triangle
# (the diagonal side in the images below) should have one end at the lower-left
# of the triangle, and the other end at the upper-right.

# create a range of 1 to num
# for each number, print number stars + num - number spaces (rjust) ?
#
def stars(num, limit, spaces)
  stars = '*' * num
  spaces == :left ? stars.rjust(limit) : stars.ljust(limit)
end

def triangle(limit, edge = :top, spaces = :left)
  show_stars = proc { |num| puts stars(num, limit, spaces) }
  if edge == :top
    (1..limit).each(&show_stars)
  else
    (1..limit).reverse_each(&show_stars)
  end
end

triangle(5)
triangle(5, :top, :right)
triangle(5, :down)
triangle(5, :down, :right)
#     *
#    **
#   ***
#  ****
# *****
