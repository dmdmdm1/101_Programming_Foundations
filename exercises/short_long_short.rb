# Write a method that takes two strings as arguments, determines the longest of
# the two strings, and then returns the result of concatenating the shorter
# string, the longer string, and the shorter string once again. You may assume
# that the strings are of different lengths.

def short_long_short(s1, s2)
  long =  s1.length > s2.length ? s1 : s2
  short = s1.length < s2.length ? s1 : s2
  short + long + short
end


puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"
