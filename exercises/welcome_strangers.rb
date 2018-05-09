# Create a method that takes 2 arguments, an array and a hash. The array will
# contain 2 or more elements that, when combined with adjoining spaces, will
# produce a person's name. The hash will contain two keys, :title and
# :occupation, and the appropriate values. Your method should return a greeting
# that uses the person's full name, and mentions the person's title.

# set name and join string from user array user
# set data and join hash values from data
# return sentence with both 

def greetings(user, data)
  name = user.join(' ')
  work = data.values.join(' ')
  "Hello, #{name}! Nice to have a #{work} around"
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.