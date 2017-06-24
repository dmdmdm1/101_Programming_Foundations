#See if the name "Dino" appears in the string below:
advice = <<~HEREDOC
Few things in life are as important as house training your pet dinosaur.
HEREDOC
puts advice
p advice.include?("Dino")
p advice.match("Dino")
