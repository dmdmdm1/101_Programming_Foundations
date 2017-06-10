#Write a method that takes one argument, a positive integer, and returns a
#string of alternating 1s and 0s, always starting with 1. The length of the
#string should match the given integer.

# def stringy(number)
#   numbers = []
#   count = number
#   iterations = 0
#
#   while count > 0
#     digit = iterations.even? ? 1 : 0
#     numbers.push(digit)
#     count -= 1
#     iterations += 1
#   end
#
#   numbers.join
# end

def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end



puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
