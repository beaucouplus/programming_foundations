numbers = (1..99)
numbers.each { |num| puts num if num.even? }

# on line 1, a Range object is created. It takes a starting number and a end
# number. It is here used with '..', which means it includes the last number
# on line two, the each method invoked takes each nums and puts it if
# this number is even
# Several things happen. First, a local variable |num| is injected as a param to
# the block. It is the current element in the array
# then a condition num.even? checks if the number is even or not.
# If it is even, the condition evaluates to true and the puts method, which 
# displays the number and returns nil, is invoked with the number as a param.

