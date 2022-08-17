import turtle
from turtle import Turtle, Screen
import random

def draw_shape(t, side_length, sides):
    #
    for _ in range(sides):
        t.forward(side_length)
        t.right(360/sides)


def draw_dashed_line(t, on, off, length):
    for _ in range(length//(on+off)):
        t.pendown()
        t.forward(on)
        t.penup()
        t.forward(off)
    t.pendown()


def choose_random_color(t):
    red   = random.randint(0, 255)
    green = random.randint(0, 255)
    blue  = random.randint(0, 255)
    t.color((red, green, blue))


def draw_shapes(t):
    for sides in range(3, 10+1):
        choose_random_color(t)
        draw_shape(timmy, 100, sides)


def random_walk(t, step_length):
    """performa a random walk on the canvas"""
    steps      = random.randint(50, 250)    # choose a random amount of steps to perform
    directions = [0, 90, 180, 270]          # list of possible turn angles

    t.speed("fastest")                         # set speed to fast
    t.pensize(10)                           # change the size of the line to 10
    for _ in range(steps):
        choose_random_color(t)                  # choose a random color
        t.right(random.choice(directions))      # perform a random turn
        t.forward(step_length)                  # move in selected direction


def draw_spirograph(t, nr_circles):
    """t - turtle object, nr_circles - number of discrete circles"""
    turn_angle = 360/nr_circles
    t.speed("fastest")                         # set speed to fast
    t.pensize(1)                           # change the size of the line to 10
    for _ in range(nr_circles):
        choose_random_color(t)
        t.circle(100)
        t.right(turn_angle)


timmy = Turtle()
timmy.shape("turtle")
turtle.colormode(255)

# draw_rectangle(timmy, 100)
# draw_dashed_line(timmy, 10, 10, 15*20)
# draw_shapes(timmy)
# random_walk(timmy, 50)
# draw_spirograph(timmy, 5)
timmy.speed("fastest")
# timmy.dot(20, "blue")
# timmy.forward(100)
#
# timmy.begin_fill()
# timmy.circle(10)
# timmy.end_fill()
tommy = timmy
tommy.setheading(90)
tommy.circle(10)
tommy.forward(100)

screen = Screen()
screen.exitonclick()