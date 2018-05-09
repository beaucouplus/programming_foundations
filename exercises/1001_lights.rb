# You have a bank of switches before you, numbered from 1 to n. Each switch is
# connected to exactly one light that is initially off. You walk down the row of
# switches and toggle every one of them. You go back to the beginning, and on
# this second pass, you toggle switches 2, 4, 6, and so on. On the third pass,
# you go back again to the beginning and toggle switches 3, 6, 9, and so on. You
# repeat this process and keep going until you have been through n repetitions.

# Write a method that takes one argument, the total number of switches, and
# returns an Array that identifies which lights are on after n repetitions.

# Example with n = 5 lights:

# round 1: every light is turned on round
# 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
# The result is that 2 lights are left on, lights 1 and 4.
# The return value is [1, 4].

# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is
# [1, 4, 9].

# each switch is unique. As a switch, it's either 1 or 0
# each iteration uses the products of the current number
# the array should evolve each time the switches are pushed

# round 1 > [1, 2, 3, 4, 5] > multiples of 1
# round 2 > [1, nil, 3, nil, 5] > multiples of 2
# round 3 > [1, nil, nil, nil, 5] > multiples of 3
# round 4 > [1, nil, nil, 4, 5] > multiples of 4
# round 5 > [1, nil, nil, 4, nil] > multiples of 5

# keep an array with the switches values
#
# set current index values at 1
# loop
#  array.each if multiple of current multiple
#   reverse_switch_values at index
#   continue until loop is equal to the size of the array
#
require 'pry'

def toggle_switch(current_value, idx)
  current_value ? nil : idx
end

def left_lights(switches)
  lights = []
  switches.times { lights << nil }

  current_multiple = 1

  loop do
    lights.each_with_index do |light, idx|
      lights[idx] = toggle_switch(light, idx + 1) if ((idx + 1) % current_multiple).zero?
    end
    current_multiple += 1
    break if current_multiple > lights.size
  end
  lights.compact
end

p left_lights(5)
p left_lights(10)
p left_lights(1000)