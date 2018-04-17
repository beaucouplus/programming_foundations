flint_rock = "The Flintstones Rock!"

10.times { |count| puts flint_rock.rjust(flint_rock.size + count) }

def factors(number)
  return 1 if number == 0 
  dividend = number.abs
  divisors = []
  while dividend > 1
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end

puts factors(45)


limit = 15

def fib(first_num, second_num,limit)
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit)
puts "result is #{result}"


def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"



