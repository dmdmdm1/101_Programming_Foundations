# Write a method that takes a non-empty string argument, and returns the middle
# character or characters of the argument. If the argument has an odd length,
# you should return exactly one character. If the argument has an even length,
# you should return exactly two characters.

# Examples:


def center_of(str)
  middle_range = (str.length/2 -1..str.length/2 )
  middle_index = str.length / 2
  index = str.length.odd? ?  middle_index : middle_range
  str[index]
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
