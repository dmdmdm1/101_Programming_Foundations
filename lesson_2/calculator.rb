require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
def messages(message, lang='en')
  MESSAGES[lang][message]
end
LANGUAGE = 'en'

# ask the user for two numbers
# ask the user for the operation to perform
# perform the operation on the two numbers
# output the result

def prompt(key)
  message = messages(key, LANGUAGE)   # make sure the "messages" method is declared above this line
  puts("=> #{message}")
end

def integer?(number)
  number.to_i.to_s == number
end

def float?(number)
  number.to_f.to_s == number
end

def number?(number)
  integer?(number) || float?(number)
end

def operation_to_message(operator)

  word = case operator
          when "1"
            prompt('adding')
          when "2"
            prompt('subtracting')
          when "3"
            prompt('multiplying')
          when "4"
            prompt('dividing')
          end
  word
end

prompt('welcome')
name = " "

loop do
  name = gets.chomp
  if name.empty?
    prompt('valid_name')
  else
    break
  end
end

prompt('greeting')
puts "#{name}!"

loop do # main loop
  number1 = " "
  number2 = " "

  loop do
    prompt('first_number')
    number1 = gets.chomp

    if number?(number1) && integer?(number1)
      break
    else
      prompt('invalid_number')
    end
  end

  loop do
    prompt('second_number')
    number2 = gets.chomp

    if number?(number2) && integer?(number2)
      break
    else
      prompt('invalid_number')
    end
  end

  # operator_prompt = <<~MSG
  #   "Which operation do you want to perform?
  #   1) add
  #   2) subtract
  #   3) multiply
  #   4) divide
  # MSG
  prompt('operator_prompt')

  operator = " "
  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt('choose_number')
    end
  end

  operation_to_message(operator)


  result =  case operator
            when "1"
              number1.to_i + number2.to_i
            when "2"
              number1.to_i - number2.to_i
            when "3"
              number1.to_i * number2.to_i
            when "4"
              number1.to_f / number2.to_f
            end

  prompt('result')
  puts "#{result}"
  prompt('another_operation')
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
end

prompt('thank_you')
