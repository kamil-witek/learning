from turtle import Turtle

WIDTH  = 800
HEIGHT = 600
A      = 20

class Playarea(Turtle):
    def __init__(self):
        """initialize, create turtle, set basic parameters"""
        super(Playarea, self).__init__("square")
        self.shapesize(stretch_wid=0.5, stretch_len=0.5)
        self.hideturtle()
        self.color("white")
        self.penup()

    def draw_middle_line(self):
        """draw middle dividing line"""
        self.clear()
        self.home()
        self.setheading(90)
        self.goto(x=0, y=-(HEIGHT-40)/2)
        while self.ycor() < (HEIGHT-40)/2:
            for _ in range(3):
                self.stamp()
                self.forward(10)
            for _ in range(3):
                self.forward(10)