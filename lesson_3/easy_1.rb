advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!("important","urgent")


puts (10..100).include?(42)


famous_words = "seven years ago..."

famous_too = "Four score and"

puts famous_too + " " + famous_words

puts famous_words.insert(0, famous_too + " ")

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

p flintstones.select{ |name,_| name == "Barney"}.to_a.flatten!