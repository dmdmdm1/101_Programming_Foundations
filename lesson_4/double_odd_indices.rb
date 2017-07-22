def double_odd_indices(numbers)
  counter = 0

  loop do
    break if counter == numbers.size

    numbers[counter] =  numbers[counter] *= 2 if counter.odd?
    counter += 1
  end
  numbers
end
