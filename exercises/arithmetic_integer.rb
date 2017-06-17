# Write a program that prompts the user for two positive integers, and then
# prints the results of the following operations on those two numbers: addition,
# subtraction, product, quotient, remainder, and power. Do not worry about
# validating the input.

puts "==> Enter the first number:"
number1 = gets.chomp.to_i
puts "==> Enter the second number:"
number2 = gets.chomp.to_i

def sum(number1, number2)
  sum = number1 + number2
  puts "#{number1} + #{number2} = #{sum}"
end

def subtraction(number1, number2)
  subtraction = number1 - number2
  puts "#{number1} - #{number2} = #{subtraction}"
end

def multiplication(number1, number2)
  product = number1 * number2
  puts "#{number1} * #{number2} = #{product}"
end

def division(number1, number2)
  quotient = number1 / number2
  puts "#{number1} / #{number2} = #{quotient}"
end

def power(number1, number2)
  power = number1**number2
  puts "#{number1} ** #{number2} = #{power}"
end

sum(number1, number2)
subtraction(number1, number2)
multiplication(number1, number2)
division(number1, number2)
power(number1, number2)
