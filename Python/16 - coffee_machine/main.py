from machine_data import MENU, resources
from art import logo


local_resources = {
    "water" : resources["water"],
    "milk"  : resources["milk"],
    "coffee": resources["coffee"],
    "money" : 0.0
}


def return_available_drinks():
    """Function checks available drinks and returns them as a text string ready to be printed"""
    drinks_string = ""
    for drink in list(MENU.keys()):
        drinks_string += drink + '/'
    # return the string with the rightmost "/" character removed
    return drinks_string.rstrip("/")


def print_report():
    """Function prints out current machine inventory status"""
    print(f"Water  💦️:  {local_resources['water']}ml")
    print(f"Milk    🍼️:  {local_resources['milk']}ml")
    print(f"Coffee 🥔️:  {local_resources['coffee']}g")
    print(f"Money   💲️: ${local_resources['money']:.2f}")
    # >️< secret character to get nice emojis working!


def resources_available(print_insufficient, choice):
    """Function checks if the machine has the required resources for the drink of choice, prints out what is missing
    if print_verbose set to True """
    ingredients_available = True
    for ingredient in MENU[choice]["ingredients"].keys():
        if local_resources[ingredient] < MENU[choice]["ingredients"][ingredient]:
            if print_insufficient:
                print(f" ℹ️Sorry there is not enough {ingredient}.")
            ingredients_available = False
    return ingredients_available


def gather_coins():
    """Function asks user for coins and returns the amount gathered"""
    print("Please insert coins.")
    quarters = int(input(" 💵️how many quarters?: "))
    dimes    = int(input(" 💵️how many dimes?   : "))
    nickels  = int(input(" 💵️how many nickels? : "))
    pennies  = int(input(" 💵️how many pennies? : "))
    return quarters*0.25 + dimes*0.1 + nickels*0.05 + pennies*0.01


# def return_change(inserted_coins_amount, choice):
#     """Function returns the amount of money left from buying coffee, will be negative in case of lack of money"""
#     coffee_cost = MENU[choice]["cost"]
#     return inserted_coins_amount - coffee_cost


def is_money_amount_sufficient(print_status, inserted_coins_amount, choice):
    """Function returns True if inserted amount of money is sufficient, False otherwise.
    Additionally, function processes the change"""
    coffee_cost = MENU[choice]["cost"]
    if inserted_coins_amount >= coffee_cost:
        change = inserted_coins_amount - coffee_cost
        if print_status:
            print(f"ℹ️Here is ${round(change):.2f} in change.")
        return True
    else:
        if print_status:
            print("⚠️Sorry that's not enough money. Money refunded.")
        return False


def deduct_resources_do_coffee(choice):
    """Function responsible for decrementing local resources"""
    for ingredient in MENU[choice]["ingredients"].keys():
        local_resources[ingredient] -= MENU[choice]["ingredients"][ingredient]
    local_resources["money"] += MENU[choice]["cost"]
    print(f"🤩 Here is your {choice} ☕. Enjoy!")


def make_coffee_process(choice):
    """The main coffee giving out function, handling checking for availability, money and giving out coffee"""
    # check if local resources are sufficient for the chosen coffee type, (print out what is insufficient)
    if not resources_available(print_insufficient=True, choice=choice):
        return
    # gather money
    inserted_coins_amount = gather_coins()
    # check if inserted amount of money is sufficient and print it (print the change / not enough)
    if not is_money_amount_sufficient(print_status=True, inserted_coins_amount=inserted_coins_amount, choice=choice):
        return
    # use up local resources to make coffee, (print that the coffee is ready)
    deduct_resources_do_coffee(choice)


def coffee_machine():
    """Function handling initial user input machine regarding operation type"""
    print(logo)
    # the loop is infinite, because in case of required ending the function is terminated with a return stmt
    while True:
        # read user input - what function of the machine does he want
        choice = input(f"\n ♨️What would you like? ({return_available_drinks()}): ").lower()
        if choice in MENU.keys():
            make_coffee_process(choice)
        elif choice == "report":
            print_report()
        elif choice == "off":
            return
        else:
            print("⚠️Sorry, unknown product!")


coffee_machine()
