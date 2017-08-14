# Given this previously seen family hash, print out the name, age and gender of
# each family member:
#
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.map do |k,v|
  p "#{k} is a #{v["age"]} year-old #{v["gender"]}"
end
