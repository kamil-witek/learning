#Number Guessing Game Objectives:

# Include an ASCII art logo.
# Allow the player to submit a guess for a number between 1 and 100.
# Check user's guess against actual answer. Print "Too high." or "Too low." depending on the user's answer.
# If they got the answer correct, show the actual answer to the player.
# Track the number of turns remaining.
# If they run out of turns, provide feedback to the player.
# Include two different difficulty levels (e.g., 10 guesses in easy mode, only 5 guesses in hard mode).

from art import logo
import random
from replit import clear

RND_NUM_MIN = 1  #min value of random number
RND_NUM_MAX = 100  #max value of random number
ATTEMPTS_EASY = 10  #number of attempts at easy difficulty level
ATTEMPTS_HARD = 5  #number of attempts at hard difficulty level
WAY_OFFSET = 25  #the difference above which program adds WAY to verbose output, qg. way too low


def print_welcome_message():
    """Handy function gathering all the initial printing"""
    clear()
    print(logo)
    print("Welcome to the Number Guessing Game!")
    print("I'm thinking of a number between 1 and 100.")


def generate_random_number():
    """Generate random number in globally specified range"""
    return random.randint(RND_NUM_MIN, RND_NUM_MAX)


def get_attempts_from_difficulty():
    """Function asks user to specify hardness level and returns attempts of guessing"""
    difficulty = input("Choose a difficulty. Type 💤'easy' or 💥'hard': ")
    if difficulty == "easy":
        return ATTEMPTS_EASY
    else:
        return ATTEMPTS_HARD


def is_player_guess_right_and_print_comment(guess, target, attempts):
    """Function checks user answer and prints some comments and returns the correctness of the guess"""
    if guess == target:
        print(f"✔️ You got it! The answer was {target}")
        return True
    elif guess > target:
        if abs(guess - target) > WAY_OFFSET:
            print("🔼🔼 Way too high.")
        else:
            print("🔼 Too high")
    else:
        if abs(guess - target) > WAY_OFFSET:
            print("🔽🔽 Way too low.")
        else:
            print("🔽 Too low")

    if attempts == 0:
        print("❌ You've run out of guesses, you lose.")
    else:
        print("Guess again!")

    return False


def play_game():
    """Main game function"""
    number_is_guessed = False

    #generate random number and evaluate the number of attempts
    print_welcome_message()
    random_number = generate_random_number()
    print(f"  Pssst, the random number is equal {random_number}")
    attempts_left = get_attempts_from_difficulty()

    #stay in game while the number is not guessed and there are still attempts left
    while not number_is_guessed and attempts_left > 0:
        print(
            f"❗You have {attempts_left} attempts remaining to guess the number.❗"
        )
        guessed_number = int(input("Make a guess: "))
        attempts_left -= 1

        if is_player_guess_right_and_print_comment(guessed_number,
                                                   random_number,
                                                   attempts_left):
            number_is_guessed = True


play_game()
