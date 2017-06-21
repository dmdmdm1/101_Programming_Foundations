VALID_CHOICES = %w(1 2 3 4 5)
NUMBERS = {
  1 => "rock",
  2 => "paper",
  3 => "scissors",
  4 => "lizard",
  5 => "spock"
}
WINNING_COMBINATIONS = {
  "1" => ["3", "4"],
  "2" => ["1", "5"],
  "3" => ["2", "5"],
  "4" => ["5", "2"],
  "5" => ["3", "1"]
}

def prompt(message)
  puts("=> #{message}")
end

def clear_screen
  system("cls") || system("clear")
end

def win?(first, second)
  WINNING_COMBINATIONS[first].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def score(first, second, player_wins, comp_wins)
  if win?(first, second)
    player_wins.push(1)
  elsif win?(second, first)
    comp_wins.push(1)
  end
  player_wins_count = player_wins.inject(:+)
  comp_wins_count = comp_wins.inject(:+)
  count_wins(player_wins, comp_wins, player_wins_count, comp_wins_count)
  round_winner(player_wins_count, comp_wins_count)
end

def count_wins(player_wins, comp_wins, player_wins_count, comp_wins_count)
  prompt("player's score is #{player_wins_count}") unless player_wins.empty?
  prompt("computer's score is #{comp_wins_count}") unless comp_wins.empty?
end

def round_winner(player_wins_count, comp_wins_count)
  prompt("You won 5 times!") if player_wins_count == 5
  prompt("Computer won 5 times!") if comp_wins_count == 5
end

clear_screen
prompt("Welcome to the game! Hope you enjoy it!")
loop do
  player_wins = []
  comp_wins = []

  loop do
    choice = " "
    loop do
      prompt("Choose one number to choose your move: #{NUMBERS}")
      choice = gets.chomp

      if VALID_CHOICES.include?(choice)
        break
      else
        prompt("That's not a valid choice")
      end
    end

    computer_choice = VALID_CHOICES.sample
    prompt("You chose #{NUMBERS[choice.to_i]}, computer chose" \
    " #{NUMBERS[computer_choice.to_i]}")
    display_results(choice, computer_choice)
    score(choice, computer_choice, player_wins, comp_wins)
    break if player_wins.length == 5 || comp_wins.length == 5
  end

  answer = ""
  loop do
    prompt("Do you want to play again? Please enter y or n")
    answer = gets.chomp.downcase
    if %w(y n).include?(answer)
      break
    else
      prompt("Invalid Input. Please enter y or n")
    end
  end

  clear_screen
  break unless answer == "y"
end

prompt("Thank you for playing. Good bye!")
