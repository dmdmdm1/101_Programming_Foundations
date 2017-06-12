# Build a program that displays when the user will retire and how many years she
# has to work till retirement.

puts "What is your age?"
current_age = gets.chomp.to_i

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

current_year = Time.now.year
work_years_left = retirement_age - current_age
retirement_year = current_year + work_years_left


puts "It's #{current_year}. You will retire in #{retirement_year}."\
"You have only #{work_years_left} of work to go!"
