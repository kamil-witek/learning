############### Blackjack Project #####################

#Difficulty Normal 😎: Use all Hints below to complete the project.
#Difficulty Hard 🤔: Use only Hints 1, 2, 3 to complete the project.
#Difficulty Extra Hard 😭: Only use Hints 1 & 2 to complete the project.
#Difficulty Expert 🤯: Only use Hint 1 to complete the project.

############### Our Blackjack House Rules #####################

## The deck is unlimited in size. 
## There are no jokers. 
## The Jack/Queen/King all count as 10.
## The the Ace can count as 11 or 1.
## Use the following list as the deck of cards:
## cards = [11, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10]
## The cards in the list have equal probability of being drawn.
## Cards are not removed from the deck as they are drawn.
## The computer is the dealer.

##################### Hints #####################

#Hint 1: Go to this website and try out the Blackjack game: 
#   https://games.washingtonpost.com/games/blackjack/
#Then try out the completed Blackjack project here: 
#   http://blackjack-final.appbrewery.repl.run

#Hint 2: Read this breakdown of program requirements: 
#   http://listmoz.com/view/6h34DJpvJBFVRlZfJvxF
#Then try to create your own flowchart for the program.

#Hint 3: Download and read this flow chart I've created: 
#   https://drive.google.com/uc?export=download&id=1rDkiHCrhaf9eX7u7yjM1qwSuyEk-rPnt

#Hint 4: Create a deal_card() function that uses the List below to *return* a random card.
#11 is the Ace.
#cards = [11, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10]

#Hint 5: Deal the user and computer 2 cards each using deal_card() and append().
#user_cards = []
#computer_cards = []

#Hint 6: Create a function called calculate_score() that takes a List of cards as input 
#and returns the score. 
#Look up the sum() function to help you do this.

#Hint 7: Inside calculate_score() check for a blackjack (a hand with only 2 cards: ace + 10) and return 0 instead of the actual score. 0 will represent a blackjack in our game.

#Hint 8: Inside calculate_score() check for an 11 (ace). If the score is already over 21, remove the 11 and replace it with a 1. You might need to look up append() and remove().

#Hint 9: Call calculate_score(). If the computer or the user has a blackjack (0) or if the user's score is over 21, then the game ends.

#Hint 10: If the game has not ended, ask the user if they want to draw another card. If yes, then use the deal_card() function to add another card to the user_cards List. If no, then the game has ended.

#Hint 11: The score will need to be rechecked with every new card drawn and the checks in Hint 9 need to be repeated until the game ends.

#Hint 12: Once the user is done, it's time to let the computer play. The computer should keep drawing cards as long as it has a score less than 17.

#Hint 13: Create a function called compare() and pass in the user_score and computer_score. If the computer and user both have the same score, then it's a draw. If the computer has a blackjack (0), then the user loses. If the user has a blackjack (0), then the user wins. If the user_score is over 21, then the user loses. If the computer_score is over 21, then the computer loses. If none of the above, then the player with the highest score wins.

#Hint 14: Ask the user if they want to restart the game. If they answer yes, clear the console and start a new game of blackjack and show the logo from art.py.








from art import logo
from replit import clear
import random


cards        = [11, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10]
player_cards = []
dealer_cards = []



def exchange_ace_if_necessary(user):
  """Function checks if ace is in cards of provided [user] card stock. If it is, then it checks if the ace would increase the sum beyond 21 - if so, then the ace gets devalued to 1
  #### Returns: nothing"""
  if 11 in user:          #check if ace is in cards
    if sum(user) > 21:    #if the sum is greater than 21 then replace ace with 1
      user.remove(11)
      user.append(1)



def pick_cards():
  """Function picks starting cards for player and all cards for dealer
  #### Returns: nothing"""
  player_cards.clear()    #clear card history
  dealer_cards.clear()
  
  #pick 2 cards for player
  player_cards.append(random.choice(cards))
  player_cards.append(random.choice(cards))
  exchange_ace_if_necessary(player_cards)

  #pick as many cards for dealer as required to reach a minimum sum of 17
  exchange_ace_if_necessary(dealer_cards)
  while sum(dealer_cards) < 17:
    dealer_cards.append(random.choice(cards))
    exchange_ace_if_necessary(dealer_cards)



def display_cards():
  """Function displays user cards and first dealer card
  #### Returns: nothing"""
  print(f"   Your cards: {player_cards}, current score: {sum(player_cards)}")
  print(f"   Computer's first card: {dealer_cards[0]}")
  #print(f">>>>>>>>>>>Psssst, the rest of dealer's cards are: {dealer_cards}, sum: {sum(dealer_cards)}")



def blackjack_finish():
  """Function checks if someone has a blackjack at start and finishes if necessary
  #### Returns: True - someone has blackjack-endgame, False - noone has blackjack"""
  if sum(dealer_cards) == 21:
    display_final_cards_and_verbose("Lose, opponent has Blackjack 😱")
    return True
  elif sum(player_cards) == 21:
    display_final_cards_and_verbose("Win with a Blackjack 😎")
    return True
  return False



def display_final_cards_and_verbose(verbose):
  """Function displays player and dealer cards and prints the finish text as parameter [verbose]
  #### Returns: nothing"""
  print(f"   Your final hand: {player_cards}, final score: {sum(player_cards)}")
  print(f"   Computer's final hand: {dealer_cards}, final score: {sum(dealer_cards)}")
  print(verbose)



def player_wants_another_round():
  """Function asks player if he wants to play another round of blackjack
  #### Returns: True - continue game, False - end game"""
  decision = input("Do you want to play a game of Blackjack? Type 'y' or 'n': ")
  if decision == "y":
    return True
  else:
    return False



def player_wants_more_cards():
  """Function asks the player is he wants another card
  #### Returns: True: player wants another card, False: stop game, player doesnt want any more cards"""
  decision = input("Type 'y' to get another card, type 'n' to pass: ")
  if decision == "y":
    return True
  else:
    return False



def add_card_to_player():
  """Function adds one card to player and works out the ace value
  #### Returns: nothing"""
  player_cards.append(random.choice(cards))
  exchange_ace_if_necessary(dealer_cards)



def is_over(user):
  """Function checks if user passed as parameter has a sum of cards greater than 21
  #### Returns: True: if sum > 21, False: if sum <= 21"""
  if sum(user) > 21:
    return True
  else:
    return False


def evaluate_result_end_game():
  """Function evaluates the result of game - displays cards and verbose result
  #### Returns: nothing"""
  if is_over(player_cards):
    display_final_cards_and_verbose("You went over. You lose 😤")
  elif is_over(dealer_cards):
    display_final_cards_and_verbose("Opponent went over. You win 😁")
  elif sum(player_cards) == sum(dealer_cards):
    display_final_cards_and_verbose("Draw 🙃")
  elif sum(player_cards) > sum(dealer_cards):
    display_final_cards_and_verbose("You win 😃")
  else:
    display_final_cards_and_verbose("You lose 😤")


#MAIN PROGRAM


continue_blackjack = player_wants_another_round()  #ask if player wants to play
while continue_blackjack:
  clear()
  print(logo)
  pick_cards()
  display_cards()
  # Check if someone has blackjak and end the game if so
  if blackjack_finish():
    continue_blackjack = player_wants_another_round()
  else:
    continue_round = True  #continue round but only when player wants more cards, else end the round and make a round-up
    while continue_round:
      continue_round = player_wants_more_cards()
      if continue_round:
        add_card_to_player()
        display_cards()
        if is_over(player_cards):
          evaluate_result_end_game()
          continue_blackjack = player_wants_another_round()
          continue_round = False
      else:
        display_cards()
        evaluate_result_end_game()
        continue_blackjack = player_wants_another_round()