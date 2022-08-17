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

number_meaning = ["Rock", "Paper", "Scissors"]
images = [rock, paper, scissors]

player = int(input("What do you choose? Type 0-Rock, 1-Paper, 2-Scissors.\n"))
if player > 2 or player < 0:
  print("invalid input")
  quit()
  
print(f"You chose {number_meaning[player]}")
print(images[player])

computer = random.randint(0,2)
print(f"Computer chose {number_meaning[computer]}")
print(images[computer])

if player < 0 or player > 2:
  print("invalid input")
elif player == computer:
  print("Draw!")
elif player == 0 and computer == 2:
  print("You win!")
elif player == 2 and computer == 0:
  print("You lost")
elif player > computer:
  print("You win!")
else:
  print("You lost")

