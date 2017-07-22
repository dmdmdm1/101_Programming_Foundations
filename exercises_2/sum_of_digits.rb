# Write a method that takes one argument, a positive integer, and returns the
# sum
# of its digits.
#
# Examples:
#
# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45
#
# The tests above should print true.

def sum(integer)
  integer.to_s.chars.map { |d| d.to_i }.inject(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
