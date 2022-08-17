rock = '''
    _______
---'   ____)
      (_____)
      (_____)
      (____)
---.__(___)
'''

paper = '''
    _______
---'   ____)____
          ______)
          _______)
         _______)
---.__________)
'''

scissors = '''
    _______
---'   ____)____
          ______)
       __________)
      (____)
---.__(___)
'''

#Write your code below this line 👇

import random

player = input("What do you choose? Type r-Rock, p-Paper, s-Scissors.\n").lower()

computer = random.choice("rps")

print("")
if player == "r":
  print(rock)
elif player == "p":
  print(paper)
else:
  player = "s"  #in case user types different letter
  print(scissors)
  
print("\nComputer chose:\n")

if computer == "r":
  print(rock)
elif computer == "p":
  print(paper)
else:
  print(scissors)

print("")

if player == computer:
  print("Draw!")
elif "r" in (player+computer) and "s" in (player+computer):
  #---------------- r s ----------------
  if player == "r":
    print("You win!")
  else:
    print("You loose")
elif "s" in (player+computer) and "p" in (player+computer):
  # ---------------- s p ----------------
  if player == "s":
    print("You win!")
  else:
    print("You loose")
else:
  #----------------- p r ----------------
  if player == "p":
    print("You win!")
  else:
    print("You loose")

