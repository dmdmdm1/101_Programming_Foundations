# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...)
# such that the first 2 numbers are 1 by definition, and each subsequent number
# is the sum of the two previous numbers. This series appears throughout the
# natural world.
#
# Computationally, the Fibonacci series is a very simple series, but the results
# grow at an incredibly rapid rate. For example, the 100th Fibonacci number is
# 354,224,848,179,261,915,075 -- that's enormous, especially considering that it
# takes 6 iterations before it generates the first 2 digit number.
#
# Write a method that calculates and returns the index of the first Fibonacci
# number that has the number of digits specified as an argument. (The first
# Fibonacci number has index 1.)
#
# Examples:
#
#
#
# You may assume that the argument is always greater than or equal to 2.
 # f = 1, 1, 2, 3, 5, 8 ...

 #pseudocode
 #1. set the first two numbers as 1 and the index at this moment, with two
 #numbers as two. This implies that the index starts at 1, not at zero.
 #2. in order to find the fibonacci sequence until there is a number that
 #matches the number of digits, loop. begin by adding +1 to the index, as the
 #next number will be added. Then find the next number by adding both numbers in
 #the sequence. In this case add first and second and assign this sum to the
 # variable fibonacci.  first and second will be acordingly the next numbers so
 # first will be the actual second and second will be the new found fibonacci.
 #assign them to this new values within the loop.
 #3. Before the assignment to the new values, check if the fibonacci new found
 #number meets the condition which is having the number of digits specified. Do
 #this by turning the fibonacci number to a string and checking its size and
 # comparing to see if its size(number of digits) is greater or equal than the
 #specified number of digits. If this is the case, break the loop
 # 4. After the loop, return the index. 

def find_fibonacci_index_by_length(number_digits)
  first = 1
  second = 1
  index = 2

  loop do
    index += 1
    fibonacci = first + second
    break if  fibonacci.to_s.size  >= number_digits

    first = second
    second = fibonacci
  end

  index
end

p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
