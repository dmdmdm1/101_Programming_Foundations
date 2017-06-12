# Print the even numbers from 1 to 99, inclusive. All numbers should be printed
# on separate lines.

array = (0..99).to_a
even_numbers = array.select { |n| n.even?}
puts even_numbers
