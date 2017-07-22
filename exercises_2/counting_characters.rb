
#
# Write a program that will ask a user for an input of a word or multiple words
# and give back the number of characters. Spaces should not be counted as a
# character.
#
# input:
#
# Please write word or multiple words: walk
#
# output:
#
# There are 4 characters in "walk".
#
# input:
#
# Please write word or multiple words: walk, don't run
#
# output:
#
# There are 13 characters in "walk, don't run".

puts "Please enter one or more words"
input =  gets.chomp
space_count = input.count(" ")
number_of_characters = input.size - space_count
puts "There are #{number_of_characters} in #{input}."
