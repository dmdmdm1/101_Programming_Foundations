

def oddities(array)
  new_array = []
  count = 0
  while count < array.length do
    new_array.push(array[count])
    count += 2
  end
  new_array
end


puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
