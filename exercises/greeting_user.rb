print "What is your name? "
name = gets.chomp
answer = if name.end_with?("!")
  "HELLO #{name.upcase.chop}. WHY ARE WE SCREAMING?"
else
  "Hello #{name}"
end

puts answer
