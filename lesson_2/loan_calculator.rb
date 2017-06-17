def prompt(message)
  puts "==> #{message}"
end

prompt("Welcome to the loan calculator!")

loop do
  prompt("Please enter the amount of the loan:")
  loan_amount = gets.chomp

  loop do
    if loan_amount.to_f < 0 || loan_amount.empty?
      prompt("You must enter a positive number!")
    else
      break
    end
  end

  prompt("Please enter the interest rate:")
  prompt("For example 5 for 5% or 2.5 for 2.5%")
  interest_rate = gets.chomp

  loop do
    if interest_rate.to_f < 0 || interest_rate.empty?
      prompt("You must enter a positive number!")
    else
      break
    end
  end

  prompt("Please enter the loan duration in years:")
  loan_duration = gets.chomp

  loop do
    if loan_duration.to_i < 0 || loan_duration.empty?
      prompt("You must enter a positive number")
    else
      break
    end
  end

  annual_interest_rate = interest_rate.to_f / 100
  monthly_interest_rate = annual_interest_rate / 12
  loan_duration_in_months = loan_duration.to_i * 12

  monthly_payment = loan_amount.to_f *
                    (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**-loan_duration_in_months))

  prompt("Your monthly_payment is $ #{format('%02.2f', monthly_payment)}")
  prompt("Another calculation? (Y for yes)")
  answer = gets.chomp
  break unless answer.downcase == "y"
end

prompt("Thank you for using the loan calculator!")
prompt("Goodbye!")
