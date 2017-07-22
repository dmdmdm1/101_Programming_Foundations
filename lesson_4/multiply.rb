def multiply(numbers, number)
  counter = 0
  multiplied = []

  loop do
    break if counter == numbers.size

    multiplied <<  numbers[counter] *= number
    counter += 1
  end
  multiplied
end
