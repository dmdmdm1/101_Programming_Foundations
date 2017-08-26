# Mad libs are a simple game where you create a story template with blanks for
# words. You, or another player, then construct a list of words and place them
# into the story, creating an often silly or funny story as a result.
#
# Create a simple mad-lib program that prompts for a noun, a verb, an adverb,
# and an adjective and injects those into a story that you create.

puts "Enter a noun"
noun = gets.chomp
puts "Enter a verb"
verb = gets.chomp
puts "Enter an adjective"
adjective = gets.chomp
puts "Enter an adverb"
adverb = gets.chomp

sentence_1 = "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's funny!"
sentence_2 = "#{verb} the #{noun} with a #{adjective} shirt #{adverb}!"
sentence_3 = "A #{adjective} #{noun} will #{verb} #{adverb}"

p sentences = [sentence_1, sentence_2, sentence_3].sample






# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly
#
# Do you walk your blue dog quickly? That's hilarious!
