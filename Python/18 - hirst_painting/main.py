import turtle

import colorgram
import random
from turtle import Turtle, Screen

def extract_colors():
    colors_raw = colorgram.extract('dots.jpg', 30)
    rgb_colors = []
    for color in colors_raw:
        #rgb_colors.append(tuple(color.rgb))
        r = color.rgb.r
        g = color.rgb.g
        b = color.rgb.b
        rgb_colors.append((r,g,b))
    print(rgb_colors)

color_list = [(212, 155, 98), (238, 246, 241), (237, 241, 245), (51, 108, 132), (179, 78, 33), (199, 143, 34), (123, 80, 97), (118, 155, 171), (124, 175, 158), (227, 198, 129), (193, 86, 107), (55, 39, 21), (191, 124, 142), (11, 49, 62), (56, 117, 113), (41, 169, 126), (169, 21, 30), (225, 92, 76), (5, 30, 27), (81, 147, 166), (38, 32, 33), (241, 164, 159), (166, 27, 22), (239, 163, 168), (110, 124, 155), (17, 80, 90), (170, 207, 190), (22, 82, 80)]


def draw_hirst_grid(t, colors, nx, ny, dxy, d):
    """Draws a hirst painting using circles. t - turtle object, colors - list of tuples, nx, ny - number of circles, dxy - distance between circles,
    d - circle diameter """
    EAST  = 0
    NORTH = 90
    WEST  = 180
    SOUTH = 270

    x_length = nx*d + (nx-1)*dxy
    y_length = ny*d + (ny-1)*dxy
    # position turtle on lower left corner
    t.penup()                       # stop drawing
    t.setheading(WEST)              # rotate to left
    t.forward(x_length/2)           # move to left side
    t.setheading(SOUTH)             # rotate down
    t.forward(y_length/2)           # move to lower left side
    # add north offset of radius value
    t.setheading(NORTH)             # set heading to up
    t.forward(d/2)                  # move slightly up - by a radius value, to compensate for the circle drawing algo.
    for __ in range(ny):
        for _ in range(nx):
            # draw one row
            t.setheading(SOUTH)             # rotate to south, on left side the circle will be drawn
            t.color(random.choice(colors))  # set random color
            t.pendown()                     # put pen down to enable drawing
            t.begin_fill()                  # begin the filling process
            t.circle(d/2)                   # draw circle
            t.end_fill()                    # end the filling process
            t.penup()                       # stop drawing - leaving a mark after movement
            t.setheading(EAST)              # rotate to east
            t.forward(d+dxy)                # move to the next position
        # move to the beginning of new row
        t.backward(x_length+dxy)        # move to the beginning of current row
        t.setheading(NORTH)             # rotate north
        t.forward(dxy+d)                # move to the next row
    t.backward(dxy+y_length/2)
    t.setheading(EAST)
    t.forward(x_length/2)
    t.setheading(NORTH)


def draw_hirst_grid2(t, colors, nx, ny, dxy, d):
    """Draws a hirst painting using dots. t - turtle object, colors - list of tuples, nx, ny - number of circles, dxy - distance between circles,
    d - circle diameter """
    EAST  = 0
    NORTH = 90
    WEST  = 180
    SOUTH = 270

    x_length = (nx-1)*d + (nx-1)*dxy    # distance between the leftmost and rightmost circle centers
    y_length = (ny-1)*d + (ny-1)*dxy    # distance between the upmost and down-most circle centers
    # position turtle on lower left corner
    t.penup()                       # stop drawing
    t.setheading(WEST)              # rotate to left
    t.forward(x_length/2)           # move to left side
    t.setheading(SOUTH)             # rotate down
    t.forward(y_length/2)           # move to lower left side
    t.setheading(NORTH)             # set heading to up
    for __ in range(ny):
        for _ in range(nx):
            # draw one row
            t.setheading(EAST)              # rotate to east
            t.dot(d, random.choice(colors)) # draw a dot
            t.forward(dxy+d)                # move to the next position
        # move to the beginning of new row
        t.backward(x_length+dxy+d)        # move to the beginning of current row
        t.setheading(NORTH)             # rotate north
        t.forward(dxy+d)                # move to the next row
    t.backward(dxy+d+y_length/2)
    t.setheading(EAST)
    t.forward(x_length/2)
    t.setheading(NORTH)


timmy = Turtle()
turtle.colormode(255)
timmy.shape("turtle")
timmy.speed("fastest")

draw_hirst_grid(timmy, color_list, 10, 10, 50, 20)
timmy.hideturtle()

screen = Screen()
screen.exitonclick()