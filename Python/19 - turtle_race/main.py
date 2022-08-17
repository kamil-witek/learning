from turtle import Turtle, Screen
import random
from text_display import write_letter


def color_orb(color):
    if color == "red":
        return "🔴️"
    elif color == "orange":
        return "🟠"
    elif color == "yellow":
        return "🟡"
    elif color == "green":
        return "🟢"
    elif color == "blue":
        return "🔵️"
    elif color == "violet":
        return "🟣"
    else:
        return "⚪️"


screen = Screen()
screen.setup(width=500, height=400)
user_bet = screen.textinput(title="Make your bet", prompt="Which turtle will win the race? Enter a color: ")
colors   = ["red", "orange", "yellow", "green", "blue", "violet"]

# draw finish line
timmy = Turtle()
timmy.penup()
timmy.goto(x=230, y=-150)
timmy.pendown()
timmy.goto(x=230, y=150)
timmy.hideturtle()
timmy.penup()


is_race_on     = False
turtles        = []
TURTLE_SPACING = 40
TURTLE_NUMBER  = 6
for index in range(TURTLE_NUMBER):
    new_turtle = Turtle("turtle")           # create a new turtle object
    new_turtle.color(colors[index])         # set turtles color from color list
    new_turtle.penup()                      # disable drawing
    x = -230                                                            # starting x coordinate
    y = -((TURTLE_NUMBER-1)*TURTLE_SPACING/2) + index*TURTLE_SPACING    # generate y coordinates so that turtles will be centered in y axis
    new_turtle.goto(x=x, y=y)               # set turtles position
    turtles.append(new_turtle)              # write turtle to list

if user_bet in colors:
    is_race_on = True

while is_race_on:
    for turtle in turtles:
        random_distance_travelled = random.randint(0, 10)
        turtle.forward(random_distance_travelled)
        if turtle.xcor() >= 230:  # or turtle.position()[0]
            is_race_on = False
            winner     = turtle.color()[0]
            if winner == user_bet:
                print(f"😁️ You win! The winner is {winner} {color_orb(winner)} turtle!")
                timmy.goto(-230, 150)
                for letter in "you win":
                    write_letter(timmy, letter)
            else:
                print(f"😭️ You loose! The winner is {winner} {color_orb(winner)} turtle!")
                timmy.goto(-230, 150)
                for letter in "you loose":
                    write_letter(timmy, letter)
            break

screen.exitonclick()