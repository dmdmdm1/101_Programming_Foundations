# Write a method that takes an Array of numbers, and returns an Array with the
# same number of elements, and each element has the running total from the
# original Array.

# def running_total(ary)
#   new_ary = []
#   return ary if ary.empty?
#   new_ary.push(ary[0])
#   count = 1
#   while count < ary.length do
#     new_ary.push(ary.slice(0..count).inject(:+))
#     count += 1
#   end
#   new_ary
# end

def running_total(array)
  sum = 0
  array.map { |n| sum += n }
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
