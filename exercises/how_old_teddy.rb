# Build a program that randomly generates and prints Teddy's age.
# To get the age, you should generate a random number between 20 and 200.

# given a range between 20 and 200
# START
# SET age = create a random number between 20 and 200 > with rand()
# PRINT age


# Modify this program to ask for a name, and then print the age for that person.
# For an extra challenge, use "Teddy" as the name if no name is entered.

def print_random_age(name = "Teddy")
  age = rand(20..201)
  "#{name} is #{age} years old."
end

puts print_random_age("Gerard")
puts print_random_age("Maxime")
puts print_random_age
