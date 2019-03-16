def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(current_card_total)
  puts prompt_user
  get_user_input
  if get_user_input == "S" || get_user_input == "s"
    return display_card_total(current_card_total)
  elsif get_user_input == "h" || get_user_input == "h"
    deal_card
    return display_card_total(current_card_total)
  elsif get_user_input != "s" || get_user_input != "h"
    invalid_command
    prompt_user
    get_user_input
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
