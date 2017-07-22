# Write a method that takes two arguments, a string and a positive integer, and
# prints the string as many times as the integer indicates.
#
# Example:
#
# repeat('Hello', 3)

def repeat(string, number)
  number.times do
    p  string
  end
end

repeat('Hello', 3)
