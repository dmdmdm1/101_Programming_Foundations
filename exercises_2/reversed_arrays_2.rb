# Write a method that takes an Array, and returns a new Array with the elements
# of the original list in reverse order. Do not modify the original list.
#
# You may not use Array #reverse or Array#reverse!, nor may you use the method
# you wrote in the previous exercise.


def reverse(list)
  reverse_list = []
  index = -1

  while -index <= list.size do
    reverse_list << list[index]
    index -= 1
  end
   reverse_list
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b c d e)) == %w(e d c b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 2, 3]                      # => [1, 2, 3]
p new_list = reverse(list)              # => [3, 2, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 2, 3]                     # => true
p new_list == [3, 2, 1]                 # => true
