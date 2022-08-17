#Password Generator Project
import random

letters = [
    'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o',
    'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D',
    'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S',
    'T', 'U', 'V', 'W', 'X', 'Y', 'Z'
]
numbers = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
symbols = ['!', '#', '$', '%', '&', '(', ')', '*', '+']

print("Welcome to the PyPassword Generator!")
nr_letters = int(input("How many letters would you like in your password?\n"))
nr_symbols = int(input(f"How many symbols would you like?\n"))
nr_numbers = int(input(f"How many numbers would you like?\n"))

#Eazy Level - Order not randomised:
#e.g. 4 letter, 2 symbol, 2 number = JduE&!91

#Hard Level - Order of characters randomised:
#e.g. 4 letter, 2 symbol, 2 number = g^2jk8&P

# ////////////////////////////////////////////////////////////////

# how it works:
# get number of letters, stmbols and numbers
# create a pool of max 3 objects representing one from letter, symbol and number, but the inclusion in pool is only possible if a certain object is still available
# choose random element of pool - choose to generate letter, symbol or numbers
# choose such object from array of possible elements
# repeat for the rest of characters in password
# generate a list of objects
# shuffle the list 😑

pool = []  # pool of objects to choose from to generate character
password = ""  # resulting password

ltr_left = nr_letters  # 0 - ammount left
sym_left = nr_symbols  # 1
num_left = nr_numbers  # 2

# password generation
for position in range(1, nr_letters + nr_symbols + nr_numbers + 1):
    # build pool of possible objects
    pool.clear()
    if ltr_left > 0:
        pool.append(0)  # add letter to pool if applicable
    if sym_left > 0:
        pool.append(1)  # add symbol to pool if applicable
    if num_left > 0:
        pool.append(2)  # add number to pool if applicable

    # choose random object from pool
    chosen_obj_type = pool[random.randint(0, len(pool) - 1)]

    # generate password part and update possible pool statuses
    if chosen_obj_type == 0:
        #letter chosen
        ltr_left -= 1
        password = password + random.choice(letters)
    elif chosen_obj_type == 1:
        #symbol chosen
        sym_left -= 1
        password = password + random.choice(symbols)
    else:
        #number chosen_obj_type
        num_left -= 1
        password = password + random.choice(numbers)

print("Here is your password: " + password)
