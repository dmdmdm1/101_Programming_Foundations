# Print all odd numbers from 1 to 99, inclusive. All numbers should be printed on
# separate lines.

array = (0..99).to_a
odd_numbers = array.select { |n| n.odd? }
odd_numbers.map { |n| p n }
