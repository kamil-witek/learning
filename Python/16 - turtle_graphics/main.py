# import turtle
#
# timmy     = turtle.Turtle()
# my_screen = turtle.Screen()
#
# print(timmy)
# print(my_screen.canvheight)
#
# timmy.shape("turtle")   # change shape from arrow to turtle
# timmy.color("red")
# timmy.forward(100)
#
# my_screen.exitonclick() # exit only on click
from prettytable import PrettyTable

table = PrettyTable()
table.add_column("Pokemon Name", ["Pikachu", "Sqirtle", "Charmander"])
table.add_column("Type", ["Electric", "Water", "Fire"])
table.align = "l"

print(table)