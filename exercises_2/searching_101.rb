#
#
# Write a program that solicits 6 numbers from the user, then prints a message
# that describes whether or not the 6th number appears amongst the first 5
# numbers.
#
# Examples:
#
# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].
#
#
# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 18
# The number 18 does not appear in [25, 15, 20, 17, 23].
#

array = []
count= 0
ordinals = {
  0 => "1st",
  1 => "2nd",
  2 => "3rd",
  3 => "4th",
  4 => "5th",
 }
while count < 5 do
  puts "Enter the #{ordinals[count]} number:"
  number = gets.chomp.to_i
  array << number
  count += 1
end

puts "Enter the last number:"
last_number = gets.chomp.to_i
included =  "appears"
not_included = "does not appear"
declaration =  array.include?(last_number) ? included : not_included
puts "The number #{last_number} #{declaration} in #{array}"
