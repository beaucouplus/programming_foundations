# Mad libs are a simple game where you create a story template with blanks for
# words. You, or another player, then construct a list of words and place them
# into the story, creating an often silly or funny story as a result.

# Create a simple mad-lib program that prompts for a noun, a verb, an adverb,
# and an adjective and injects those into a story that you create.

# create a method to prompt 
# set a noun, a verb, an adjective, an adverbe
# return a sentence with these words

def prompt(word)
  puts "Enter a #{word}:"
end

def get_input(word)
  prompt(word)
  gets.chomp
end

def mad_lib
  noun = get_input(:noun)
  verb = get_input(:verb)
  adjective = get_input(:adjective)
  adverb = get_input(:adverb)
  puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
end

mad_lib