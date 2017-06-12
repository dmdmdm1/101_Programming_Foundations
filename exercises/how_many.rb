# Write a method that counts the number of occurrences of each element in a
# given array.
vehicles = %w(
  car
  car
  truck
  car
  SUV
  truck
  motorcycle
  motorcycle
  car
  truck
)

def count_occurrences(array)
  repetitions = {}
  array.each do |word|
    repetitions[word] = array.count(word)
  end

  repetitions.map { |word, count| puts "#{word} => #{count}" }
end

count_occurrences(vehicles)
