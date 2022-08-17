from art import logo, vs
from game_data import data
import random
from replit import clear



def generate_random_id(different_from_id, max_id):
  """Generate random id, different from <different_from_id> and in the range [0...max_id]"""
  #meet the loop requirements for generation of new ids
  generated_id  = different_from_id
  #define the maximum attempts to generate a different id, if they are extinguished, give up instead of looping for long ammounts of time
  attempts_left = 10
  while generated_id == different_from_id and attempts_left > 0:
    generated_id = random.randint(0, max_id)
    attempts_left -= 1
  return generated_id


def fetch_account_data(data_type, chosen_id):
  """Function to get required data from database <data>. The chosen database entry is <chosen_id>, key is <data_type>"""
  #one function to generalize the database access
  account_info      = data[chosen_id]
  return account_info[data_type]


def display_account_info(option, chosen_id, current_player_score):
  """Function prints <text> and account details, returns number of followers"""
  account_name      = fetch_account_data('name', chosen_id)
  account_desc      = fetch_account_data('description', chosen_id)
  account_country   = fetch_account_data('country', chosen_id)
  account_followers = fetch_account_data('follower_count', chosen_id)
  if option == "A":
    text = "Compare A"
  else:
    text = "Against B"
  
  string_to_print = f"{text}: {account_name}, a {account_desc}, from {account_country}"

  if current_player_score > 0 and option == "A":
    string_to_print += f", with a number of followers equal to {account_followers}M"
  
  print(string_to_print)
  print(f"Psst, they have {account_followers}M followers 🤫")



def is_answer_correct(answer, followers_a, followers_b):
  """Function compares answer against the real data ans returns True if user is correct, false otherwise"""
  if followers_a > followers_b and answer == "A":
    return True
  elif followers_b > followers_a and answer == "B":
    return True
  elif followers_a == followers_b:
    return True
  else:
    return False



def play_game():
  #score keeping
  score        = 0
  #make game repeatable
  game_is_over = False
  
  #display art
  print(logo)
  
  id_a = generate_random_id(None, len(data))
  
  while not game_is_over:
    #generate random account from database, id_a is only generated when the game is first run, otherwise its inhirited from the last round
    id_b = generate_random_id(id_a, len(data))
    
    #format account data to printable format
    display_account_info("A", id_a, score)
    print(vs)
    display_account_info("B", id_b, score)
    
    #ask user for a guess
    answer = input("Who has more followers? Type 'A' or 'B': ")

    clear()
    #display art
    print(logo)
    
    #check if user is correct
    ##get follower count of each account
    ##use if statement to check if user is correct
    followers_a = fetch_account_data('follower_count', id_a)
    followers_b = fetch_account_data('follower_count', id_b)
    if is_answer_correct(answer, followers_a, followers_b):
      #answer is correct
      #score keeping
      score += 1
      #make account at position B the next account 
      id_a = id_b
      #give user feedback on their guess
      print(f"You're right! Current score: {score}.")
    else:
      #answer is wrong
      clear()
      print(logo)
      print(f"Sorry, that's wrong. Final score: {score}")
      game_is_over = True
  
  
  

play_game()



  