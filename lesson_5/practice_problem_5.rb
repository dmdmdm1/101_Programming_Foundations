# Given this nested Hash:
#
# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }
#
# figure out the total age of just the male members of the family.

munsters.values.select { |e| e["gender"] == "male" }.map { |e| e["age"] }.inject(:+)


total_male_age = 0
munsters.each_value do |details|
  total_male_age += details["age"] if details["gender"] == "male"
end

male_age = 0
munsters.each_value {|value| male_age +=  value["age"] if value["gender"] == "male" }
