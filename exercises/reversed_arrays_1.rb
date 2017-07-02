

# Write a method that takes an Array as an argument, and reverses its elements
# in place; that is, mutate the Array passed into this method. The return value
# should be the same Array object.
#
# You may not use Array#reverse or Array#reverse!.
#
# Examples:
#
# list = [1,2,3,4]
# result = reverse!(list) # => [4,3,2,1]
# list == [4, 3, 2, 1]
# list.object_id == result.object_id
#
# list = %w(a b c d e)
# reverse!(list) # => ["e", "d", "c", "b", "a"]
# list == ["e", "d", "c", "b", "a"]

# list = ['abc']
# reverse!(list) # => ["abc"]
# list == ["abc"]
#
# list = []
# reverse!(list) # => []
# list == []



def reverse!(list)
  number_of_times = list.length/2
  b = 0
  e = -1
  number_of_times.times do
    list[b], list[e] = list[e], list[b]
    b += 1
    e -= 1
  end
  list
end

list = [1,2,3,4]
result = reverse!(list)
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b c d e)
reverse!(list) # => ["e", "d", "c", "b", "a"]
p list == ["e", "d", "c", "b", "a"]

list = ['abc']
reverse!(list) # => ["abc"]
p list == ["abc"]

list = []
reverse!(list) # => []
p list == []
