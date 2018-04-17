# Modify the hash such that each member of the Munster family has an additional "age_group" key
# that has one of three values describing the age group the family member is in (kid, adult, or senior).
# Your solution should produce the hash below
# Note: a kid is in the age range 0 - 17, an adult is in the range 18 - 64 and a senior is aged 65+
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# LOOP over hash values (should be an array of arrays)
# LOOP over each subarray
# SET age_group according to age > METHOD
# add item age_group => METHOD result to hash

def set_age_group(age)
  return "kid" if age < 18
  return "adult" if (18..64).cover?(age)
  "senior"
end

munsters.values.each do |member|
  member["age_group"] = set_age_group(member["age"])
end

p munsters



# { "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
#   "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
#   "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
#   "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
#   "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }
