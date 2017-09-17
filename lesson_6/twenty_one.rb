# 1. Initialize deck
# 2. Deal cards to player and dealer
# 3. Player turn: hit or stay
#   - repeat until bust or "stay"
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.

VALUES = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
SUITS = ["H", "D", "C", "S"]

def prompt(message)
  puts "=> #{message}"
end

def initilialize_deck
  VALUES.product(SUITS).shuffle
end

def total(cards)
  values = cards.map { |card| card[0] }

  sum = 0
  values.each do |value|
    if value == "A"
      sum += 11
    elsif value.to_i == 0
      sum += 10
    else
      sum += value.to_i
    end
  end

  VALUES.select { |value| value == "A" }.count.times do
    sum - 10 if sum > 21
  end
  sum
end

def busted?(cards)
  total(cards) > 21
end

# :tie, :dealer, :player, :dealer_busted, :player_busted
def detect_result(dealer_cards, player_cards)
  if total(player_cards) > 21
    :player_busted
  elsif total(dealer_cards) > 21
    :dealer_busted
  elsif total(player_cards) > total(dealer_cards)
    :player
  elsif total(dealer_cards) > total(player_cards)
    :dealer
  else
    :tie
  end
end

def display_result(dealer_cards, player_cards)
  result = detect_result(dealer_cards, player_cards)
  case result
  when :player_busted
    prompt("You busted, dealer wins")
  when :dealer_busted
    prompt("Dealer busted, you win")
  when :player
    prompt("You win")
  when :dealer
    prompt("Dealer wins!")
  when :tie
    prompt("It´s a tie")
  end
end

def play_again?
  puts "_______"
  answer = nil
  loop do
    prompt("Do you want to play again? 'y' or 'n' ")
    answer = gets.chomp
    break if ["y", "n"].include?(answer)
    prompt("Your answer must be 'y' or 'n'")
  end
  answer.downcase.start_with?('y') # is the modified answer available here?
end

loop do
  prompt("Welcome to 21")

  deck = initilialize_deck
  player_cards = []
  dealer_cards = []

  2.times do
    player_cards << deck.pop
    dealer_cards << deck.pop
  end

  prompt("Dealer has two cards: #{dealer_cards[0]} and ???")
  prompt("You have: #{player_cards[0]} and #{player_cards[1]}")

  # player turn
  loop do
    answer = nil
    loop do
      prompt("Hit('h') or stay('s')?")
      answer = gets.chomp.downcase
      break if ['h', 's'].include?(answer)
      prompt("Your answer must be 'h' or 's'")
    end

    if answer == "h"
      player_cards << deck.pop
      prompt("You hit!")
      prompt("Your cards are now #{player_cards}")
      prompt("Your total is now #{total(player_cards)}")
    end

    break if answer == "s" || busted?(player_cards)
  end

  if busted?(player_cards)
    display_result(dealer_cards, player_cards)
    play_again? ? next : break
  else
    prompt("You stayed at #{total(player_cards)}") # if player didn't bust
  end

  prompt("Dealer turn")

  loop do
    break if total(dealer_cards) >= 17
    prompt("Dealer hits")
    dealer_cards << deck.pop
    prompt("dealer cards are now #{dealer_cards}")
  end

  if busted?(dealer_cards)
    prompt("dealer cards are now #{dealer_cards}")
    display_result(dealer_cards, player_cards)
    play_again? ? next : break
  else
    prompt("Dealer stays at #{total(dealer_cards)}")
  end

  # both player and dealer stay - compare cards!
  puts "=============="
  prompt "Dealer has #{dealer_cards}, for a total of: #{total(dealer_cards)}"
  prompt "Player has #{player_cards}, for a total of: #{total(player_cards)}"
  puts "=============="

  display_result(dealer_cards, player_cards)

  break if play_again? == false
end
prompt("Thank you for playing 21")
