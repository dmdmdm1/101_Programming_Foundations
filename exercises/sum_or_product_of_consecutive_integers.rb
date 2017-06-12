# Write a program that asks the user to enter an integer greater than 0, then
# asks if the user wants to determine the sum or product of all numbers between
# 1 and the entered integer.

def prompt(message)
  puts "<< #{message}"
end

def compute_sum(number)
  array = (1..number.to_i).to_a
  sum = array.inject(:+)
end

def compute_product(number)
  array = (1..number.to_i).to_a
  product = array.inject(:*)
end
def valid_integer?(number)
  number.to_i > 0
end


number1 = " "

loop do
  prompt("Please enter an integer greater than 0:")
  number1 = gets.chomp
  if valid_integer?(number1)
    break
  else
    puts "the number entered must be an integer greater than 0"
  end
end

prompt("Enter 's' to compute the sum, 'p' to compute the product.")
operation = gets.chomp

sum = " "
product = " "

if operation == "s"
  sum = compute_sum(number1)
  puts "The sum of the integers between 1 and #{number1} is #{sum}."
elsif operation == "p"
  product = compute_product(number1)
  puts "The product of the integers between 1 and #{number1} is "\
  "#{product}."
else
  puts "The operation must be 'p' or 's'"
end
