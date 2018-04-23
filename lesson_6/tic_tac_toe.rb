require 'pry'
require 'pry-byebug'

INITIAL_MARKER = " "
PLAYER_MARKER = "X"
COMPUTER_MARKER = "O"
FIRST_PLAYER = %w[player computer choose].sample
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [2, 5, 8],
                 [3, 6, 9], [3, 5, 7], [1, 4, 7], [1, 5, 9]]

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system "clear"
  puts "You're #{PLAYER_MARKER} and computer is #{COMPUTER_MARKER}"
  puts ""
  puts  "     |     |"
  puts  "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts  "     |     |"
  puts  "-----|-----|-----"
  puts  "     |     |"
  puts  "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts  "     |     |"
  puts  "-----|-----|-----"
  puts  "     |     |"
  puts  "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts  "     |     |"
  puts ""
end

# rubocop:enable Metrics/AbcSize
def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ""
  loop do
    prompt("Choose a square (#{joinor(empty_squares(brd))}):")
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt("Sorry, you cannot enter this value")
  end
  brd[square] = PLAYER_MARKER
end

def find_at_risk_square(brd, player)
  at_risk = WINNING_LINES.select do |line|
    brd.values_at(*line).sort == [INITIAL_MARKER, player, player]
  end
  return nil if at_risk.empty?
  playable_position = 0
  at_risk.first.each do |position|
    playable_position = position if brd[position] == INITIAL_MARKER
  end
  playable_position
end

def center_not_played?(brd)
  brd[5] == INITIAL_MARKER
end

def most_relevant_position(brd)
  threat = find_at_risk_square(brd, PLAYER_MARKER)
  opening = find_at_risk_square(brd, COMPUTER_MARKER)

  return opening if (opening && threat) || (opening && !threat)
  return threat if threat && !opening
  return 5 if !opening && !threat && center_not_played?(brd)
  empty_squares(brd).sample
end

def computer_places_piece!(brd)
  square = most_relevant_position(brd)
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def joinor(array, separator = ",", ending = "or")
  sentence = ""
  array.each_with_index do |num, idx|
    sentence << num.to_s
    if idx < (array.size - 2)
      sentence << separator + " "
    elsif idx < (array.size - 1)
      sentence << " " + ending + " "
    else
      break
    end
  end
  sentence
end

def display_score(score)
  score.to_a.map { |sub| sub.join(": ") }.join(", ")
end

score = { player: 0, computer: 0 }
def update_score(score, winner = nil)
  score[winner.downcase.to_sym] += 1
  score
end

def define_players_order
  players = ["player", "computer"]
  answer = ""
  if FIRST_PLAYER == "choose"
    loop do
      prompt("Do you want to begin? (y/n")
      answer = gets.chomp
      return players if answer.downcase.start_with?("y")
      return players.reverse if answer.downcase.start_with?("n")
      prompt("Wrong answer. Please choose y or n")
    end
  else
    FIRST_PLAYER == "player" ? players : players.reverse
  end
end

def play(curr, brd)
  curr == "player" ? player_places_piece!(brd) : computer_places_piece!(brd)
end

def alternate_player(current_player)
  current_player == "player" ? "computer" : "player"
end

loop do
  board = initialize_board
  current_player = define_players_order[0]
  loop do
    display_board(board)
    play(current_player, board)
    break if someone_won?(board) || board_full?(board)
    current_player = alternate_player(current_player)
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
    update_score(score, detect_winner(board))

  else
    prompt "It's a tie!"
  end
  prompt "Score: #{display_score(score)}"
  prompt "Play again? (y or n)"
  answer = gets.chomp
  if score[:player] >= 5 || score[:computer] >= 5
    break prompt("Game finished: #{display_score(score)}")
  end
  break unless answer.downcase.start_with?("y")
end
prompt "Thanks for playing TicTacToe. Goodbye!"
