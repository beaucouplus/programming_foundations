# A UUID is a type of identifier often used as a way to uniquely identify items...which may not all be
# created by the same system. That is, without any form of synchronization, two or more separate
# computer systems can create new items and label them with a UUID with no significant chance of
# stepping on each other's toes.

# It accomplishes this feat through massive randomization. The number of possible UUID values is
# approximately 3.4 X 10E38.

# Each UUID consists of 32 hexadecimal characters, and is typically broken into 5 sections like this
# 8-4-4-4-12 and represented as a string.

# It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

# Write a method that returns one UUID when called with no parameters.
HEX_TABLE = "0123456789abcdef"
BREAKERS = [8,12,16,20]
# BEGIN METHOD generate_uuid
# SET empty string
# loop 32 times and sample through HEX_TABLE
# add "-" to indexes 8 13 18 23 >>> WAS WRONG

def generate_uuid
  uuid = ""
  counter = 0
  32.times do
    uuid << "-" if BREAKERS.include?(counter)
    uuid << HEX_TABLE.chars.sample
    counter += 1
  end
  uuid
end

p generate_uuid
p generate_uuid.size == "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91".size