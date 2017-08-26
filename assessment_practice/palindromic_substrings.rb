# Write a method that returns a list of all substrings of a string that are
# palindromic. That is, each substring must consist of the same sequence of
# characters forwards as it does backwards. The return value should be arranged
# in the same sequence as the substrings appear in the string. Duplicate
# palindromes should be included multiple times.
#
# You may (and should) use the substrings method you wrote in the previous
# exercise.
#
# For the purposes of this exercise, you should consider all characters and pay
# attention to case; that is, "AbcbA" is a palindrome, but neither
# "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not
# palindromes.

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

def is_palindrome?(str)
  str == str.reverse && str.size > 1
end

def palindromes(str)
  all_substrings = substrings(str)
  results = []
  all_substrings.each do |substring|
    results << substring
  end
  results
end


p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
