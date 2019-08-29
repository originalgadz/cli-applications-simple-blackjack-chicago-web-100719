def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand (1..11)
end

def display_card_total (card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game (card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first_card = deal_card
  second_card = deal_card
  card_total = first_card + second_card
  display_card_total(card_total)
  return card_total
end

def hit? (card_total)
  prompt_user
  input = get_user_input
  if input == s
    elsif input == h
      card_total += deal_card
    else
      invalid_command
      hit? (card_total)
  end
  return card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  while card_total <= 21
    card_total2 = hit? (card_total)
    until card_total2 != card_total
      card_total2 = hit? (card_total)
    end
    card_total=card_total2
    display_card_total (card_total)
  end
  end_game(card_total)
end
    
