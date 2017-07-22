ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

#throw out the really old people (age 100 or older).

puts ages.reject { |key, value| value >= 100 }
