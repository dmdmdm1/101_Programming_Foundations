VALUES = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
SUITS = ["H", "D", "C", "S"]
GAME_AIM = 31
MAXIMUM_HIT = 27

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
    if value == "A" && sum < GAME_AIM
      sum += 11
    elsif value.to_i == 0
      sum += 10
    else
      sum += value.to_i
    end
  end

  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > GAME_AIM
  end
  sum
end

def busted?(participant_total)
  participant_total > GAME_AIM
end

# :tie, :dealer, :player, :dealer_busted, :player_busted
def detect_result(dealer_total, player_total)
  if player_total > GAME_AIM
    :player_busted
  elsif dealer_total > GAME_AIM
    :dealer_busted
  elsif player_total > dealer_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def display_result(dealer_total, player_total)
  result = detect_result(dealer_total, player_total)
  case result
  when :player_busted
    prompt("You busted, dealer wins this round!")
  when :dealer_busted
    prompt("Dealer busted, you win this round!")
  when :player
    prompt("You win this round!")
  when :dealer
    prompt("Dealer wins this round!")
  when :tie
    prompt("It´s a tie in this round!")
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

def end_of_round(dealer_cards, player_cards, dealer_total, player_total)
  puts "=============="
  prompt "Dealer has #{dealer_cards}, for a total of: #{dealer_total}"
  prompt "Player has #{player_cards}, for a total of: #{player_total}"
  puts "=============="

  display_result(dealer_total, player_total)
  sleep(1.5)
end

loop do
  player_count = 0
  dealer_count = 0
  prompt("Welcome to 21")

  loop do
    deck = initilialize_deck
    player_cards = []
    dealer_cards = []

    2.times do
      player_cards << deck.pop
      dealer_cards << deck.pop
    end

    system "clear"
    prompt("Dealer has two cards: #{dealer_cards[0]} and ???")
    prompt("You have: #{player_cards[0]} and #{player_cards[1]}")

    player_total = total(player_cards)
    dealer_total = total(dealer_cards)

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
        player_total = total(player_cards)
        prompt("Your cards are now #{player_cards}")
        prompt("Your total is now #{player_total}")
        sleep(1.0)
      end

      break if answer == "s" || busted?(player_total)
    end

    sleep(1.0)
    if busted?(player_total)
      end_of_round(dealer_cards, player_cards, dealer_total, player_total)
      dealer_count += 1
      sleep(1.0)
      break if player_count == 5 || dealer_count == 5
      next
    else
      prompt("You stayed at #{player_total}") # if player didn't bust
      sleep(1.0)
    end

    sleep(1.0)
    prompt("Dealer's turn")

    loop do
      break if total(dealer_cards) >= MAXIMUM_HIT
      prompt("Dealer hits")
      sleep(1.0)
      dealer_cards << deck.pop
      dealer_total = total(dealer_cards)
      sleep(1.0)
      prompt("dealer cards are now #{dealer_cards}")
      sleep(1.0)
    end

    sleep(1.0)
    if busted?(dealer_total)
      end_of_round(dealer_cards, player_cards, dealer_total, player_total)
      player_count += 1
      sleep(1.0)
      break if player_count == 5 || dealer_count == 5
      next
    else
      prompt("Dealer stays at #{dealer_total}")
      sleep(1.0)
    end
    sleep(1.0)

    end_of_round(dealer_cards, player_cards, dealer_total, player_total)
    player_count += 1 if detect_result(dealer_total, player_total) == :player
    dealer_count += 1 if detect_result(dealer_total, player_total) == :dealer

    sleep(1.0)
    break if player_count == 5 || dealer_count == 5
  end

    if player_count == 5
      prompt("Player won this game!")
    elsif dealer_count == 5
      prompt("Dealer won this game!")
    end
    prompt("Thank you for playing 21")
    break if play_again? == false
end

prompt("Thank you for playing 21")
