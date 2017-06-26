# Write a method that takes a string argument and returns a new string that
# contains the value of the original string with all consecutive duplicate
# characters collapsed into a single character. You may not use
# String#squeeze or String#squeeze!.

def crunch(string)
  index = 0
  cleaned_doubles = ''
  while index <= string.length - 1
    cleaned_doubles << string[index] unless string[index] == string[index + 1]
    index += 1
  end
  cleaned_doubles
end


p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
