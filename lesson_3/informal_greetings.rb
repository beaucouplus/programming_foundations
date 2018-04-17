greetings = { a: 'hi' }
puts greetings[:a].object_id
informal_greeting = greetings[:a]
informal_greeting << ' there'
puts greetings[:a].object_id

puts informal_greeting  #  => "hi there"
puts greetings