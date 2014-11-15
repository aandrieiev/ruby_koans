# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#

def triangle(a, b, c)
  unreal_side      =  [a, b, c].any? { |n| n <= 0 }
  invalid_triangle =  a + b <= c || a + c <= b

  raise TriangleError if unreal_side || invalid_triangle

  return :equilateral if a == b && a == c
  return :isosceles   if a == b || b == c || a == c
  :scalene 
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
