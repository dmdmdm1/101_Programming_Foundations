# Our solution prints the results as $30.0 and $230.0 instead of the more usual
# $30.00 and $230.00. Modify your solution so it always prints the results with 2
# decimal places.
#
# Hint: You will likely need Kernel#format for this.




puts "What is the bill?"
bill = gets.chomp
puts "What is the tip percentage?"
percentage = gets.chomp

tip = format('%.2f',((bill.to_f * percentage.to_f)/ 100))
total = format('%.2f',(bill.to_f + tip.to_f))

puts "The tip is #{tip}"
puts "The total is #{total}."

#tip = format('%.2f',((bill * percentage)/ 100).round(2))
