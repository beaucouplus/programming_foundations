ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
puts ages.has_key?("Spot")

munsters_description = "The Munsters are creepy in a good way."

puts munsters_description.capitalize
puts munsters_description.swapcase
puts munsters_description.downcase
puts munsters_description.upcase


additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)

advice = "Few things in life are as important as house training your pet dinosaur."
puts advice.include?("dinosaur")

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

p flintstones + %w(Dino Hoppy)

advice = "Few things in life are as important as house training your pet dinosaur."
puts advice.slice!(38..-1)
puts advice

statement = "The Flintstones Rock!"

puts statement.count('t')
