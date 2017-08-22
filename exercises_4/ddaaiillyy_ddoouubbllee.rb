
# Write a method that takes a string argument and returns a new string that
# contains the value of the original string with all consecutive duplicate
# characters collapsed into a single character.
# You may not use String#squeeze or String#squeeze!.


def crunch(s)
  new_string = ""
  i = 0
  while i <= s.length - 1
    new_string << s[i] unless s[i] == s[i + 1]
    i += 1
  end
  new_string
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
