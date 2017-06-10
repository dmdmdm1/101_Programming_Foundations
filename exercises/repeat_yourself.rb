#Write a method that takes two arguments, a string and a positive integer,
#and prints the string as many times as the integer indicates.
# validate integer?

def repeat(string, number)
  number.times do
    p string
  end
end

s = "The cat is bad"
n = 5
repeat(s,n)
