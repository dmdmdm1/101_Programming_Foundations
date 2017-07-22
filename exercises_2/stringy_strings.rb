# Write a method that takes one argument, a positive integer, and returns a
# string of alternating 1s and 0s, always starting with 1. The length of the
# string should match the given integer.

# Examples:
#
# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

def stringy(number)
  digits = []
  counter = 0
  while counter < number do
    digits[counter] =  counter.odd? ? 0 : 1
    counter += 1
  end
  digits.join
end

puts  stringy(6) == '101010'
puts  stringy(9) == '101010101'
puts  stringy(4) == '1010'
puts  stringy(7) == '1010101'
