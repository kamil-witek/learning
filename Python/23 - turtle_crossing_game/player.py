from turtle import Turtle

STARTING_POSITION = (0, -280)
MOVE_DISTANCE     = 10
FINISH_LINE_Y     = 280


class Player(Turtle):
    def __init__(self):
        """create player turtle, orient it and move to starting position"""
        super(Player, self).__init__("turtle")
        self.penup()
        self.setheading(90)
        self.move_to_start()

    def move_up(self):
        """move turtle up on screen"""
        self.forward(MOVE_DISTANCE)

    def crossed_finish_line(self):
        """returns True if player turtle passed the finish line, Else otherwise"""
        if self.ycor() >= FINISH_LINE_Y:
            return True
        else:
            return False

    def move_to_start(self):
        """move player turtle to start position"""
        self.goto(STARTING_POSITION)

    def refresh_position(self):
        """stamp turtle on screen to put it on top of other objects"""
        self.stamp()

