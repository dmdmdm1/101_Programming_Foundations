# As we have seen previously we can use some built-in string methods to change
# the case of a string. A notably missing method is something provided in Rails,
# but not in Ruby itself...titleize. This method in Ruby on Rails creates a
# string that has each word capitalized as it would be in a title.
# For example, the string:
#
# words = "the flintstones rock"
#
# would be:
#
# words = "The Flintstones Rock"
#
# Write your own version of the rails titleize implementation.

def titleize(string)
  string.capitalize!
  space_indices = (0 ... string.length).find_all { |i| string[i,1] == " " }
  indices_to_upcase = space_indices.map { |i| i+= 1 }
  indices_to_upcase.map { |i| string[i] = string[i].upcase!}
  string
end

# words.split.map { |word| word.capitalize }.join(' ')

p titleize("the flintstones rock")
p titleize("the man and the sea")
