# Write a method that will take a short line of text, and print it within a box.
#
# Example:
#
# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+
#
# print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+

# example string size = 42
# example_horizontal line size = 46
# It is one line and three vertical bars so add 1 on top and one under plus the
# cross
# for the horizontal line add one at each side and then one cross
# s = string
# "_" = "-"
# p dash * s.size
#l =  dash * s.size + dash * 2
# puts "+#{l}+"

def print_in_box(string)
  outer_horizontal = "+" + "-" * string.size + "-" * 2 + "+"
  padding_vertical = "|" + " " * string.size + " " * 2 + "|"

  puts outer_horizontal
  puts padding_vertical
  puts "|" + " " + string + " " + "|"
  puts padding_vertical
  puts outer_horizontal
end




print_in_box('To boldly go where no one has gone before.')
print_in_box('')
