flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Find the index of the first name that starts with "Be"

puts flintstones.index{|e| e.start_with?("Be")}
