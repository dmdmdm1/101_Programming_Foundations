WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

INITIAL_MARKER = " "
PLAYER_MARKER = "X"
COMPUTER_MARKER = "O"
OPPONENTS = %w[player computer]

def prompt(msg)
  puts "=>#{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system "clear"
  puts "you're #{PLAYER_MARKER}, computer is #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |     "
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |     "
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def choose_first_player
  opponents_initials = ["p", "c"]
  answer = ""
  loop do
    prompt("Choose who should begin the game: #{OPPONENTS.join(' or ')}" \
    " 'p' or 'c'")
    answer = gets.chomp.downcase
    break if opponents_initials.include?(answer)
    prompt("Answer must be 'p' or 'c'")
  end
  answer
end

def first_player
  choose_first_player == "p" ? "player" : "computer"
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(brd)
  empty_squares(brd)[0..-2].join(", ").concat(
    " or " + empty_squares(brd).last.to_s
  )
end

def place_piece!(current_player, board)
  if current_player == OPPONENTS[0]
    player_places_piece!(board)
  else
    computer_places_piece!(board)
  end
end

def alternate_player(current_player)
  current_player == "player" ? "computer" : "player"
end

def player_places_piece!(brd)
  square = " "
  loop do
    prompt("Choose a position #{joinor(brd)}")
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt("sorry, that´s not a valid choice.")
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  if offensive_move_for_computer(brd) || defensive_move_for_computer(brd)
    opportunistic_or_defensive_move(brd)
  elsif empty_squares(brd).include?(5)
    brd[5] = COMPUTER_MARKER
  else
    square = empty_squares(brd).sample
    brd[square] = COMPUTER_MARKER
  end
  brd[square]
end

def open_line?(line, player, brd)
  brd.values_at(*line).count(player) == 2 &&
    brd.values_at(*line).count(INITIAL_MARKER) == 1
end

def best_move(brd, player)
  WINNING_LINES.each do |line|
    return line if open_line?(line, player, brd)
  end
  nil
end

def offensive_move_for_computer(brd)
  best_move(brd, COMPUTER_MARKER)
end

def defensive_move_for_computer(brd)
  best_move(brd, PLAYER_MARKER)
end

def opportunistic_or_defensive_move(brd)
  marker = offensive_move_for_computer(brd) ? COMPUTER_MARKER : PLAYER_MARKER
  best_move(brd, marker).each do |square|
    brd[square] = COMPUTER_MARKER if brd[square] == INITIAL_MARKER
  end
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
      return "Player"
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return "Computer"
    end
  end
  nil
end

loop do
  count_player = 0
  count_computer = 0
  current_player = first_player

  if current_player == OPPONENTS[0]
    prompt('player begins this game')
  else
    prompt('computer begins this game')
  end

  sleep(0.5)

  loop do
    board = initialize_board

    loop do
      display_board(board)
      place_piece!(current_player, board)
      current_player = alternate_player(current_player)
      display_board(board)
      sleep(0.5) && break if someone_won?(board) || board_full?(board)
    end

    if someone_won?(board)
      prompt("#{detect_winner(board)} won this round!")
      if detect_winner(board) == "Player"
        count_player += 1
      elsif detect_winner(board) == "Computer"
        count_computer += 1
      end
    else
      prompt("It´s a tie in this round!")
    end

    sleep(0.7)

    display_board(board)
    break if count_player == 5 || count_computer == 5
  end

  if count_player == 5
    prompt("Player won this game!")
  elsif count_computer == 5
    prompt("Computer won this game!")
  end

  prompt("play again (y or n)")
  answer = gets.chomp.downcase
  break if answer == "n"
  prompt("Your input is not valid. Game will restart") if answer.downcase != "y"
end
prompt("Thanks for playing Tic Tac Toe! Goodbye")
