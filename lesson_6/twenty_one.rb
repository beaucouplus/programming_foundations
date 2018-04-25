require 'pry'
require 'pry-byebug'

def prompt(msg)
  puts "=> #{msg}"
end

TEN = 10
LIMIT = 21
CARD_VALUES = {
  jack: TEN,
  queen: TEN,
  king: TEN,
  ace: 11
}

# CARDS
def initialize_deck
  cards_by_color = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]
  colors = %w[hearts diamonds clubs spades].map(&:to_sym)
  colors.each_with_object({}) { |key, hsh| hsh[key] = cards_by_color }
end

def alternate_player(current_player)
  current_player == :player ? :dealer : :player
end

def deal_card(deck, players, player, totals)
  color = deck.keys.sample
  card = deck[color].sample
  players[player] << deck[color].delete(card)
  totals[player] = total(players[player])
end

# rubocop:disable Style/RescueModifier
def integer?(input)
  Integer(input) rescue false
end

# rubocop:enable Style/RescueModifier
def total(cards)
  total = cards.inject(0) do |sum, card|
    card_value = integer?(card) ? card : CARD_VALUES[card]
    sum + card_value
  end
  aces_count = cards.count(:ace)
  total -= (aces_count * 10) if total > LIMIT
  total
end

def display_final_score(players_hands, totals)
  players_hands.each do |player, cards|
    first_sentence = "#{player} has those cards: #{cards.join(', ')}. "
    puts first_sentence + "His total is #{totals[player]}"
  end
end

def display_cards(players_hands)
  players_hands.each do |player, cards|
    if player == :player
      puts "#{player} has those cards: #{cards.join(', ')}"
      puts "Current total: #{total(cards)}"
    else
      puts "#{player} has #{cards[0]} and several unknown cards"
    end
  end
end

def player_hits_or_stays!(deck, players_hands, stay, totals)
  loop do
    stay[:player] = 0
    puts ""
    prompt("It's your turn!")
    prompt("Do you want to Hit or Stay ? press H for Hit, S for Stay")
    answer = gets.chomp

    if answer.downcase.start_with?("h")
      deal_card(deck, players_hands, :player, totals)
      display_cards(players_hands)
    else
      stay[:player] = 1
      break
    end
    break prompt "Player bust!" if busted?(totals, :player)
    break prompt "Player wins!" if player_wins?(totals)
  end
end

def dealer_hits_or_stays!(deck, players_hands, stay, totals)
  stay[:dealer] = 0
  puts ""
  prompt("It's dealer's turn!")
  loop do
    deal_card(deck, players_hands, :dealer, totals)
    display_cards(players_hands)
    if totals[:dealer] >= 17 && !busted?(totals, :dealer)
      stay[:dealer] = 1
      puts ""
      break prompt("Dealer decides to stay")
    end
    break prompt "Dealer bust!" if busted?(totals, :dealer)
  end
end

def play(deck, players_hands, curr, stay, total)
  curr == :player ? player_hits_or_stays!(deck, players_hands, stay, total) : dealer_hits_or_stays!(deck, players_hands, stay, total)
end

def busted?(totals, current_player)
  totals[current_player] > LIMIT
end

def someone_lost?(totals)
  totals.values.any? { |total| total > LIMIT }
end

def someone_won?(totals)
  totals.values.any? { |total| total == LIMIT }
end

def everybody_stays?(stay)
  stay.values.sum == 2
end

def detect_winner(totals)
  return :player if player_wins?(totals)
  return :player if tie?(totals)
  :dealer
end

def player_wins?(totals)
  totals[:player] > totals[:dealer] || busted?(totals, :dealer) ||
    totals[:player] == LIMIT
end

def tie?(totals)
  totals[:player] == totals[:dealer]
end

def game_ends?(totals, stay)
  someone_lost?(totals) || someone_won?(totals) || everybody_stays?(stay)
end

def play_again?
  prompt("Do you want to play again?")
  again = gets.chomp
  again.downcase.start_with?("y")
end

def update_score(score, winner)
  score[winner] += 1
  score
end

def display_score(score)
  score.to_a.map { |sub| sub.join(": ") }.join(", ")
end

score = { player: 0, dealer: 0 }
loop do
  system "clear"
  prompt("Welcome to Twenty-One!")

  deck = initialize_deck
  players_hands = { player: [],
                    dealer: [] }
  totals = { player: 0,
             dealer: 0 }
  stay = { player: 0,
           dealer: 0 }
  current_player = :player

  # begin the game
  4.times do
    deal_card(deck, players_hands, current_player, totals)
    current_player = alternate_player(current_player)
  end
  display_cards(players_hands)
  loop do
    puts ""
    play(deck, players_hands, current_player, stay, totals)
    current_player = alternate_player(current_player)
    break if game_ends?(totals, stay)
  end

  puts ""
  prompt "Game ended:"
  puts ""
  winner = detect_winner(totals)
  update_score(score, winner)
  display_final_score(players_hands, totals)
  prompt "#{winner} won"
  prompt "current_score: #{display_score(score)}"
  break "Game finished, #{display_score(score)}" if score.values.any? { |scr| scr >= 5 }
  break unless play_again?
end
prompt "Final_score: #{display_score(scores)}"
prompt("Thanks for playing Twenty One. Goodbye!")
