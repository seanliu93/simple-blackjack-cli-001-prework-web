def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand (1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
  # code #display_card_total here
end

def prompt_user
  prompt = "Type 'h' to hit or 's' to stay"
  puts prompt
  # code #prompt_user here
end

def get_user_input
  gets
  # code #get_user_input here
end

def end_game(value)
  puts "Sorry, you hit #{value}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  hand = deal_card
  hand += deal_card
  display_card_total(hand)
  hand
  # code #initial_round here
end

def hit?(total)
  # code hit? here
  prompt_user
  answer = get_user_input


  if answer == 'h'
    total += deal_card
  elsif answer == 's'
    total
  else
    invalid_command
  end

  total

end

def invalid_command
  puts "Please enter a valid command"
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  hand = initial_round
  until hand > 21
    hand = hit?(hand)
    display_card_total(hand)
  end
  end_game(hand)
  # code runner here
end
    
