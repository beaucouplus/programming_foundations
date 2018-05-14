# Write a method that takes a string as argument, and returns true if all
# parentheses in the string are properly balanced, false otherwise. To be
# properly balanced, parentheses must occur in matching '(' and ')' pairs.

# ()
# )
# (
# (()())
# (()))())
# )(
# (()))(

# rules
# at least 2 parentheses OR 0 parentheses
# must begin by (
# the string must be symetric > wrong !!!

# create a constant with a string of parentheses
# create an empty string in which I'll add parentheses one by one
# split the arg string in chars. I'll add parentheses if it matches the constant
# true if we can delete couples of parentheses several times and end
# with an empty string
require 'pry'
PARENTHESES = '()'.freeze

def balanced?(string)
  parentheses = string.chars.select { |char| PARENTHESES.include?(char) }.join
  remaining = parentheses.gsub(PARENTHESES,'')
  loop do
    remaining = remaining.gsub(PARENTHESES,'')
    break if remaining == remaining.gsub(PARENTHESES,'')
  end
  remaining.empty?
end


p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('((()))()()((()()))((((()))))') == true




# There are a few other characters that should be matching as well. Square
# brackets and curly brackets normally come in pairs. Quotation marks(single and
# double) also typically come in pairs and should be balanced. Can you expand
# this method to take into account those characters?

# check if char comes "in pairs" or "of a certain type"
# create constant of openers
# create constant of closers
# create constant of self_closing types
# check if char is included in those
# if in pairs > check if zero after +ing and -ing
# if typed > check if even number

OPENERS = '{(['
CLOSERS = '})]'
SELF_CLOSE = '"\''

def balanced?(string)
  parens = 0
  self_closers = 0
  string.each_char do |char|
    if SELF_CLOSE.include?(char)
      self_closers += 1
    else
      parens += 1 if OPENERS.include?(char)
      parens -= 1 if CLOSERS.include?(char)
      break if parens < 0
    end
  end
  binding.pry
  parens.zero? && self_closers.even?
end

puts "-----------"
p balanced?('())(()') == false
p balanced?('(("What") ("is" {this}))?') == true
p balanced?('(("What") ("is {this}))?') == false
p balanced?('(("What") ("is" this}))?') == false
