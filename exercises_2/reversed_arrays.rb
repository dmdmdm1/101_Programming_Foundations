# Write a method that takes an Array as an argument, and reverses its elements
# in place; that is, mutate the Array passed into this method. The return
# value should be the same Array object.
#
# You may not use Array#reverse or Array#reverse!.

def reverse!(list)
  left_index = 0
  right_index = -1
  while left_index < list.size / 2
    list[left_index], list[right_index] = list[right_index], list[left_index]
    left_index += 1
    right_index -= 1
  end
  list
end

list = [1,2,3,4]
result = reverse!(list)
list == [4, 3, 2, 1]
p list.object_id
p result.object_id
p "____"
list = %w(a b c d e)
p reverse!(list)  == ["e", "d", "c", "b", "a"]
p list == ["e", "d", "c", "b", "a"]

list = ['abc']
p reverse!(list) ==["abc"]
p list == ["abc"]

list = []
p reverse!(list) == []
p list == []
