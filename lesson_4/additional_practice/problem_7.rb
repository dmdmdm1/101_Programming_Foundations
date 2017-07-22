# Create a hash that expresses the frequency with which each letter occurs
# in this string:

statement = "The Flintstones Rock"

# ex:
#
# { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

array = statement.chars

hash = array.each_with_object({}) do |letter, hash|
  hash[letter] = array.count(letter)
end

p hash
