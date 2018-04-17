produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(hsh)
  keys = hsh.keys
  counter = 0
  selected = {}
  loop do
    break if counter >= keys.size
    current_key = keys[counter]
    if hsh[current_key] == "Fruit"
      selected[current_key] = "Fruit"
    end
    counter += 1
  end
  selected
end

p select_fruit(produce)