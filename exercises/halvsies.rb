# Write a method that takes an Array as an argument, and returns two Arrays
# that contain the first half and second half of the original Array,
# respectively.
# If the original array contains an odd number of elements, the middle element
# should be placed in the first half Array.

def halvsies(array)
  i = 0
  cut = array.length.even? ? (array.length/2) - 1 : (array.length/2)
  s1 = array.slice(i..cut)
  s2 = array - s1
  [s1, s2]
end

# Examples:

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
