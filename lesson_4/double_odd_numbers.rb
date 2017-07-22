def double_odd_numbers(numbers)
  counter = 0

  loop do
    break if counter == numbers.size

    numbers[counter] =  numbers[counter] *= 2 if numbers[counter].odd?
    counter += 1
  end
  numbers
end
