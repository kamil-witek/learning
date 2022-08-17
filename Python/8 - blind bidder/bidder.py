from art import logo
from replit import clear
#HINT: You can call clear() to clear the output in the console.

def find_highest_bidder(bidder_record):
  if len(bidders) == 0:
    print("No one bidded!")
  else:
    max_bidder_value = list(bidder_record.values())[0]  #get all values, convert to list, access first element
    max_bidder_name  = ""
  for bidder in bidder_record:
    if bidder_record[bidder] > max_bidder_value:
      max_bidder_value = bidder_record[bidder]
      max_bidder_name  = bidder
    
  print(f"The winner is {max_bidder_name} with a bid of ${max_bidder_value}")
  



bidders                 = {}
continue_asking_for_bid = True

print(logo)
print("Welcome to the secret auction program.")
while continue_asking_for_bid:
  name = input("What is your name?: ")
  bid  = int(input("What's your bid?:  $"))
  bidders[name] = bid

  more_bidders = input("Are there any other bidders? Type 'yes' or 'no'.\n")
  if more_bidders == "no":
    continue_asking_for_bid = False
  clear()

find_highest_bidder(bidders)