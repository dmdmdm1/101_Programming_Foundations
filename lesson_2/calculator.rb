# ask the user for two numbers
# ask the user for the operation to perform
# perform the operation on the two numbers
# output the result
def prompt(message)
  puts "=> #{message}"
end

def valid_number?(number)
  number.to_i != 0
end

def operation_to_message(operator)
  case operator
  when "1"
    "Adding"
  when "2"
    "subracting"
  when "3"
    "multiplying"
  when "4"
    "dividing"
  end
end

prompt("Welcome to calculator! Enter your name:")
name = " "

loop do
  name = gets.chomp
  if name.empty?
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Hi #{name}")

loop do # main loop
  number1 = " "
  number2 = " "

  loop do
    prompt("What is the first number?")
    number1 = gets.chomp

    if valid_number?(number1)
      break
    else
      prompt("Hmm that doesn't look like a valid number")
    end
  end

  loop do
    prompt("What is the second number?")
    number2 = gets.chomp

    if valid_number?(number2)
      break
    else
      prompt("Hmm that doesn't look like a valid number")
    end
  end

  operator_prompt = <<~MSG
    "Which operation do you want to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG
  prompt(operator_prompt)

  operator = " "
  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3 or 4")
    end
  end

    prompt("#{operation_to_message(operator)} the two numbers")

  result = case operator
            when "1"
              number1.to_i + number2.to_i
            when "2"
              number1.to_i - number2.to_i
            when "3"
              number1.to_i * number2.to_i
            when "4"
              number1.to_f / number2.to_f
            end



  prompt("The result is #{result}")
  prompt("Do you want to perform another calculation?( Y to calculate again)")
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
end

prompt("Thank you for using the calculator.")
