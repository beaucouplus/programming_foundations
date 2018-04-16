def integer?(input)
  Integer(input) rescue false
end

def float?(input)
  Float(input) rescue false
end

def number?(input)
  integer?(input) || float?(input)
end

def validates(input,type)
  return integer?(input)  if type == :integer
  return float?(input)    if type == :float
  return number?(input)   if type == :number
end

def take_input(message = "What is the input?", type = :integer, error = "Please input a number superior to 0")
  input = ""
  loop do
    puts message
    input = gets.chomp
    break if validates(input, type)
    puts error
  end
  input
end
