# Write a program that solicits 6 numbers from the user, then prints a message
# that describes whether or not the 6th number appears amongst the first
# 5 numbers.


def searching
  numbers = %w(1st 2nd 3rd 4th 5th last).map do |ordinal_number|
    puts "==> Enter the #{ordinal_number} number:"
    gets.to_i
  end

  last_number = numbers.pop
  appear_msg = numbers.include?(last_number) ? "appears" : "does not appear"
  puts "The number #{last_number} #{appear_msg} in #{numbers}."
end

searching
