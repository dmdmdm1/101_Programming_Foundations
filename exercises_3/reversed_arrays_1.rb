# Write a method that takes an Array as an argument, and reverses its elements in
# place; that is, mutate the Array passed into this method. The return value
# should be the same Array object.

#You may not use Array#reverse or Array#reverse!.

def reverse!(list)
  left_i = 0
  right_i = -1

  while left_i < list.size/2
    list[left_i], list[right_i] = list[right_i], list[left_i]
    left_i += 1
    right_i -= 1
  end
  list
end


list = [1,2,3,4]
p result = reverse!(list) #== [4,3,2,1]
list == [4, 3, 2, 1]
p list.object_id #== result.object_id

list = %w(a b c d e)
p reverse!(list) == ["e", "d", "c", "b", "a"]
p list == ["e", "d", "c", "b", "a"]

list = ['abc']
reverse!(list) # => ["abc"]
p list == ["abc"]

list = []
reverse!(list) # => []
p list #== []
