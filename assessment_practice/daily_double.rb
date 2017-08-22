def crunch(s)
  new_string = ""
  index = 0
  while index <= s.size - 1
  new_string << s[index] unless s[index] == s[index + 1]
  index += 1
  end
  new_string
end


p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
