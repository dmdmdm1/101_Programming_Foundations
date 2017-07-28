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
#
# You may assume that the input will always fit in your terminal window.

def print_in_box(text)
  horizontal = "+" + "-" * (text.length + 2) + "+"
  text_line = "| " + text + " |"
  vertical = "|" + " " * (text.length + 2) + "|"

  puts horizontal
  puts vertical
  puts text_line
  puts  vertical
  puts  horizontal
end

print_in_box('To boldly go where no one has gone before.')
