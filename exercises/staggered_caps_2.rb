# Modify the method from the previous exercise so it ignores non-alphabetic
# characters when determining whether it should uppercase or lowercase each
# letter. The non-alphabetic characters should still be included in the return
# value; they just don't count when toggling the desired case.

require 'pry'

UPPERCASE = ("A".."Z").to_a.freeze
LOWERCASE = ("a".."z").to_a.freeze

def not_in_alphabet?(char)
  !UPPERCASE.include?(char) && !LOWERCASE.include?(char)
end

def keep_non_alphabetics_in_array(string)
  string.chars.each_with_object([]).with_index do |(char, arr), idx|
    arr << [idx, char] if not_in_alphabet?(char)
  end
end

def staggered_case(string)
  non_alphabetics = keep_non_alphabetics_in_array(string)
  alphabetics_only = string.chars.select { |char| !not_in_alphabet?(char) }

  even, odd = alphabetics_only.partition.with_index { |_, idx| idx.even? }
  upcased = even.map(&:upcase)
  downcased = odd.map(&:downcase)
  staggered = upcased.zip(downcased).flatten
  
  non_alphabetics.each { |item| staggered.insert(item.first, item.last) }
  staggered.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'