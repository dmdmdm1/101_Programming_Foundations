
#
# Write a method that takes a string, and then returns a hash that contains
# 3 entries: one represents the number of characters in the string that are
# lowercase letters, one the number of characters that are uppercase letters,
# and one the number of characters that are neither.


def lowercase(s)
  lowercase_alphabet = ("a".."z").to_a
  lowercase = []
  lowercase_alphabet.each do |n|
    if s.include?(n)
      lowercase << n
    end
  end
  lowercase
end

def uppercase(s)
  uppercase_alphabet = ("A".. "Z").to_a
  uppercase = []
  uppercase_alphabet.each do |n|
    if s.include?(n)
      uppercase << n
    end
  end
  uppercase
end


def letter_case_count(s)
  hash = {}
  hash[:lowercase] = lowercase(s).count
  hash[:uppercase] = uppercase(s).count
  hash[:neither] = s.size - lowercase(s).count - uppercase(s).count
  hash
end


p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
