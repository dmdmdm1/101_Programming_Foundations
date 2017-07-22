#
# How big is the room?
#
# Build a program that asks a user for the length and width of a room in meters
#  and then displays the area of the room in both square meters and square feet.
#
# Note: 1 square meter == 10.7639 square feet
#
# Do not worry about validating the input at this time.
#
# Example Run
#
# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).


sq_meters_to_sq_feet = 10.7639

puts "Enter the length of the room in meters:"
length_in_meters = gets.chomp.to_f
puts "Enter the width of the room in meters:"
width_in_meters = gets.chomp.to_f
area_in_sq_m = (length_in_meters * width_in_meters).round(2)
area_in_sq_feet = (area_in_sq_m  * sq_meters_to_sq_feet).round(2)
puts "The area of the room is #{area_in_sq_m} square meters" + \
"(#{area_in_sq_feet} square feet)."
