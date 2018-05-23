require 'pry'

def shout_out_to(name)
  name = name.chars.each { |c| c.upcase! }
  # binding.pry
  puts 'HEY ' + name.join
end

shout_out_to('you')