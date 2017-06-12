# Modify this program to ask for the input measurements in feet, and display the
# results in square feet, square inches, and square centimeters.


SQFEET_TO_SQINCHES = 144
SQFEET_TO_SQCMS = 929.03

puts "Enter the length of the room in feet:"
length = gets.to_f
puts "Enter the width of the room in feet:"
width = gets.to_f

area_in_sqfeet = (length * width).round(2)

area_in_sqinches = (area_in_sqfeet * SQFEET_TO_SQINCHES).round(2)

area_in_sqcms = (area_in_sqfeet * SQFEET_TO_SQCMS)

puts "The area of the room is #{area_in_sqfeet} square feet"\
"(#{area_in_sqinches} square inches), (#{area_in_sqcms} square centimeters)."
