
# Odd Numbers
#
# Print all odd numbers from 1 to 99, inclusive. All numbers should be printed
# on separate lines.

puts (1..99).to_a.select { |n| n.odd? }
