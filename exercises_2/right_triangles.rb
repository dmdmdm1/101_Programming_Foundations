# Write a method that takes a positive integer, n, as an argument,
# and displays a right triangle whose sides each have n stars. The hypotenuse of
# the triangle (the diagonal side in the images below) should have one end at the
# lower-left of the triangle, and the other end at the upper-right.


def triangle(n)
  space = " "
  star = "*"
  star_count = 1

  while n > 0 do
    p (space * (n-1)) + (star * star_count)
    n -= 1
    star_count += 1
  end
end

triangle(5)
triangle(9)
