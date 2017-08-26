# Write a method that returns a list of all substrings of a string.
# The returned list should be ordered by where in the string the substring begins.
# This means that all substrings that start at position 0 should come first,
# then all substrings that start at position 1, and so on.
# Since multiple substrings will occur at each position,
# the substrings at a given position should be returned in order from shortest to
# longest.

# You may (and should) use the substrings_at_start method you wrote in the
# previous exercise:

def substrings_at_start(string)
  result = []
  index = 0
  while index < string.size
    result << string[0..index]
    index += 1
  end
  result
end

def substrings(string)
  results = []
  (0..string.size).each do |starting_index|
    current_substring = string[starting_index..-1]
    results.concat(substrings_at_start(current_substring))
  end
  results
end

p substrings('abcde') == [
   'a', 'ab', 'abc', 'abcd', 'abcde',
   'b', 'bc', 'bcd', 'bcde',
   'c', 'cd', 'cde',
   'd', 'de',
   'e'
 ]
