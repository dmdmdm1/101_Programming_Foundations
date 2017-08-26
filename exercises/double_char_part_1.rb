# Write a method that takes a string, and returns a new string in which every
# character is doubled.
#
# Examples:

def repeater(str)
  result = []
  str.chars.each do |char|
    result << char * 2
  end
  result.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
