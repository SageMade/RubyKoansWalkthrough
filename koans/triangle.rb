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
  if a <= 0 || b <= 0 || c <= 0
  	raise TriangleError, "Cannot have a length less than or equal to zero"
  elsif !check_side(a, b, c)
  	raise TriangleError, "Side a violates the Triangle inequality rule"
  elsif !check_side(b, a, c)
  	raise TriangleError, "Side b violates the Triangle inequality rule"
  elsif !check_side(c, a, b)
  	raise TriangleError, "Side c violates the Triangle inequality rule"
  end

  if a == b && b == c
  	return :equilateral
  elsif a != b and b != c and a != c
  	return :scalene
  else 
  	return :isosceles
  end
end

def check_side(side, other, other_other)
	return side < other + other_other && side >= (other - other_other).abs
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
