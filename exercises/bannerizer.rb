LEFT = '| '.freeze
RIGHT = ' |'.freeze
SCREEN_WIDTH = 80

def push_words_to_sub_array(result, array_to_split)
  under_screen_width_array = []
  char_counter = 0
  array_to_split.each do |word|
    if char_counter < SCREEN_WIDTH && (char_counter + word.size) <= SCREEN_WIDTH
      char_counter += word.size + 1
      under_screen_width_array << word
    end
  end
  result << under_screen_width_array
  remaining_array = array_to_split.drop(under_screen_width_array.size)
  push_words_to_sub_array(result, remaining_array) if !remaining_array.empty?
end

def split_sentence_to_arrays_under_screen_width(sentence)
  return [sentence] if sentence.size < SCREEN_WIDTH
  splitted = sentence.split
  result = []
  push_words_to_sub_array(result, splitted)
  result.map { |sub| sub.join(' ').ljust(SCREEN_WIDTH) }
end

def print_in_box(sentence)
  sentence.size < SCREEN_WIDTH ? length = sentence.size : length = SCREEN_WIDTH

  splitted_sentence = split_sentence_to_arrays_under_screen_width(sentence)

  outside = '+-' + ('-' * length) + '-+'
  inside = LEFT + (' ' * length) + RIGHT
  empty_lines = [outside, inside]

  empty_lines.each { |line| puts line }
  splitted_sentence.each { |line| puts LEFT + line + RIGHT }
  empty_lines.reverse.each { |line| puts line }
end

sentence = "Salut c'est Maxime le super héros le roi des robots des canailloux et des casse cous qui mange des cailloux et porte des dessous tous mous avec des cuillers en argent et des fourchettes énormes en guise de couteau. Parce que ça n'a ptêt pas de sens mais quand même, on fait ce qu'on peut mamène."
print_in_box(sentence)
print_in_box('To boldly go where no one has gone before.')
print_in_box('')

