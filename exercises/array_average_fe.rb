
def average(array)
  sum = array.inject(:+)
  sum/array.size.to_f
end


puts average([10, 3, 7]) == 6.666666666666667
puts average([6, 2, 1, 4, 5]) == 3.6
