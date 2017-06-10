def stringy(size, start = 1)
  numbers = []
  odd_idx = start == 1 ? 0 : 1

  size.times do |index|
    number = index.even? ? start : odd_idx
    numbers << number
  end

  numbers.join
end


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

puts stringy(6, 0) == '010101'
