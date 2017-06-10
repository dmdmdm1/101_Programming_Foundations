#Write a method that takes one argument, a string, and returns the same string
#with the words in reverse order.

def reverse_it(string)
  string.split(" ").reverse.join(" ")
end

puts reverse_it('') == ''
puts reverse_it('Hello World') == 'World Hello'
puts reverse_it('Reverse these words') == 'words these Reverse'
