

# Write a method that takes a String as an argument, and returns a new String
# that contains the original value using a staggered capitalization scheme in
# which every other character is capitalized, and the remaining characters are
# lowercase. Characters that are not letters should not be changed, b
# ut count as characters when switching between upper and lowercase.


def staggered_case(s)
  new_s = ""
  index = 0
  while index < s.chars.length
    index.even? ? new_s << s[index].upcase : new_s << s[index].downcase
    index += 1
  end
  new_s
end


p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
