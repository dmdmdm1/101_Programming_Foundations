

# Write a program that prompts the user for two positive integers, and then
# prints the results of the following operations on those two numbers:
# addition, subtraction, product, quotient, remainder, and power. Do not worry
# about validating the input.
#
# Example
#
# ==> Enter the first number:
# 23
# ==> Enter the second number:
# 17
# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103
puts "please enter a positive integer"
first = gets.chomp.to_i
puts "please enter another integer"
second = gets.chomp.to_i

p "#{first} + #{second} = #{first + second}"
p "#{first} - #{second} = #{first - second}"
p "#{first} * #{second} = #{first * second}"
p "#{first} / #{second} = #{first / second}"
p "#{first} % #{second} = #{first % second}"
p "#{first} ** #{second} = #{first ** second}"
