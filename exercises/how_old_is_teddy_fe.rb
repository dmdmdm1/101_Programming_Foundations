# Modify this program to ask for a name, and then print the age for that person.
#  For an extra challenge, use "Teddy" as the name if no name is entered.


puts "What is your name?"
name = gets.chomp
name = "Bobby" if name ==  ""
age = rand(20..200)
puts "#{name} is #{age} years old!"
