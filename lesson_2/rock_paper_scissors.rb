VALID_CHOICES = { "r" => "rock",
                  "p" => "paper",
                  "s" => "scissors",
                  "l" => "lizard",
                  "S" => "Spock" }
WINNING_MOVES = { 'rock'     => %w(scissors lizard),
                  'scissors' => %w(paper lizard),
                  'paper'    => %w(rock Spock),
                  'lizard'   => %w(Spock paper),
                  'Spock'    => %w(scissors rock) }

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  WINNING_MOVES[first].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    'You won!'
  elsif win?(computer, player)
    "Computer won!"
  else
    "It's a tie!"
  end
end

def count_victories(total_score, player, computer)
  if win?(player, computer)
    total_score[:player] += 1
  elsif win?(computer, player)
    total_score[:computer] += 1
  end
end

total_score = { player: 0, computer: 0 }

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.values.join(', ')}. Type the 1st letter of the choice to play.")
    prompt("To choose Spoke, please type S (instead of s)")
    choice = gets.chomp
    if VALID_CHOICES.keys.include?(choice)
      choice = VALID_CHOICES[choice]
      break
    else
      prompt("That's not a valid choice")
    end
  end

  computer_choice = VALID_CHOICES.values.sample
  prompt("You chose: #{choice}, Computer chose #{computer_choice}")
  prompt(display_results(choice, computer_choice))

  count_victories(total_score, choice, computer_choice)

  first_to_five_message = "#{total_score.key(5)} has reached 5 wins, the game has ended."
  break prompt(first_to_five_message) if total_score.values.include?(5)

  prompt("Do you want to play again?")
  answer = Kernel.gets.chomp
  break puts "Goodbye" unless answer.downcase.start_with?('y')
end
