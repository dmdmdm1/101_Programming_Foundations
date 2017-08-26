# Write a method that takes a string, and returns a new string in which every
# consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and
# whitespace should not be doubled.


VOWELS = %w(a e i o u A E I O U)

def double_consonants(str)
  result = []
  str.chars.each do |char|
    char =~ /[A-Za-z]/ && !VOWELS.include?(char) ? result << char * 2 : result << char  
  end
  result.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
