#
# Write a method that takes a string, and then returns a hash that contains
# 3 entries: one represents the number of characters in the string that are
# lowercase letters, one the number of characters that are uppercase letters,
# and one the number of characters that are neither.

def letter_case_count(s)
  hash = {}
  characters = s.chars
  hash[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  hash[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  hash[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
  hash
end


p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
