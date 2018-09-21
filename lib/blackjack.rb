def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card1, card2)
  card_total = card1 + card2
  puts "Your cards add up to #{card_total}."
  return card_total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game
  "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  return display_card_total(card1, card2)
end

def hit?(initial_round)
  new_total = 0
  prompt_user
  input = get_user_input
  while input != 'h' || input != 's'
    invalid_command
    input = get_user_input
  end
  if input == 'h'
    new_total = initial_round + deal_card
  else
    new_total = initial_round
  end
  new_total
end

def invalid_command
  puts "Please enter a valid command."
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  winner = 0
  winner = initial_round
  while winner < 21
    prompt_user
    input = get_user_input
    while input != 'h'
      if input == 's'
        prompt_user
        input = get_user_input
      else
        invalid_command
        input = get_user_input
      end
    end
    winner += deal_card
    winner
  end
end