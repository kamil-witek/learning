from menu import Menu, MenuItem
from coffee_maker import CoffeeMaker
from money_machine import MoneyMachine


money_machine = MoneyMachine()
menu          = Menu()
coffee_maker  = CoffeeMaker()


def process_order(drink_choice):
    """Encapsulates the whole coffee making steps"""
    drink_item = menu.find_drink(drink_choice)
    # check if resources are sufficient
    if not coffee_maker.is_resource_sufficient(drink_item):
        return
    # gather coins
    drink_cost = drink_item.cost
    if not money_machine.make_payment(drink_cost):
        return
    # make the coffee
    coffee_maker.make_coffee(drink_item)


def print_report():
    """Function prints resources available and money gathered from customers"""
    coffee_maker.report()
    money_machine.report()


def coffee_machine():
    """Function handling initial user input machine regarding operation type"""
    # the loop is infinite, because in case of required ending the function is terminated with a return stmt
    while True:
        # gather available choices, remove rightmost '/' character
        options = menu.get_items().rstrip('/')
        # read user input - what function of the machine does he want
        choice = input(f"\n ♨️What would you like? ({options}): ").lower()
        if choice == "report":
            print_report()
        elif choice == "off":
            return
        elif menu.find_drink(choice) != None:
            process_order(choice)


coffee_machine()
