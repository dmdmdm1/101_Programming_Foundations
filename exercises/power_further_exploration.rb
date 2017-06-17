def multiply(n1, n2)
  n1 * n2
end

def square(n)
  multiply(n, n)
end

#fe
def power(n, power)
  if power == 1 return n
  multiply(n, power(n, power - 1))
end
