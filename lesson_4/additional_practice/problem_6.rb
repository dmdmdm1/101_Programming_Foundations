flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# Amend this array so that the names are all shortened to just the first
#three characters:

flintstones.map! { |name| name[0..2] }

p flintstones
