# ask the user for 2 numbers
# ask the user for an operation to perform
# perform the operation on the 2 numbers
# output the results
require 'Psych'
MSG = Psych.load_file("calculator_messages.yml")
def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(number)
  valid_chars = %w(1 2 3 4 5 6 7 8 9 0 .)
  valid = true
  number.chars.each do |char|
    valid_chars.include?(char) ? valid = true : valid = false
    break if valid == false
  end
  valid
end

def operation_to_message(op)
  case op
  when "1"
    "Adding"
  when "2"
    "Substracting"
  when "3"
    "Multiplying"
  when "4"
    "Dividing"
  end
end

lang = :en
langs = ["EN","FR"]
loop do
  prompt(MSG[lang][:language])
  lang = Kernel.gets().chomp()
  unless langs.include?(lang)
    lang = :en
  else
    lang = lang.downcase.to_sym
    break 
  end
end


prompt(MSG[lang][:welcome])


name = ""
loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt(MSG[lang][:name_err])
  else
    break
  end
end

prompt("Hi #{name}")

loop do
  number1 = ""
  number2 = ""
  loop do
    prompt(MSG[lang][:first_num])
    number1 = Kernel.gets().chomp()
    if valid_number?(number1)
      break
    else
      prompt(MSG[lang][:num_err])
    end
  end
  loop do
    prompt(MSG[lang][:second_num])
    number2 = Kernel.gets().chomp()
    if valid_number?(number2)
      break
    else
      prompt(MSG[lang][:num_err])
    end
  end

  prompt(MSG[lang][:operations])
  operator = ""
  loop do
    operator = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MSG[lang][:op_err])
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers")
  result = case operator
           when "1"
             number1.to_i() + number2.to_i()
           when "2"
             number1.to_i() - number2.to_i()
           when "3"
             number1.to_i() * number2.to_i()
           when "4"
             number1.to_i() / number2.to_f()
           end

  prompt("the result is #{result}")
  prompt(MSG[lang][:again])
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?("y")
  prompt(MSG[lang][:thanks])
end
