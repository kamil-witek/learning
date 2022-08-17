from turtle import Turtle
import math
from playarea import WIDTH, HEIGHT, A

class Paddle():
    def __init__(self, position_x, position_y):
        """generate paddle consisting of 3 turtles shaped like squares"""
        # alternate way: create one turtle and stretch it 😑
        self.segments      = []
        self.alternate_dir = "u"    # direction of automatic mode - "u"-up, "d"-down
        positions = [(position_x, position_y+A), (position_x, position_y), (position_x, position_y-A)] # predefined positions, only y changes
        for segment_number in range(3):
            new_segment = Turtle("square")
            new_segment.setheading(90)
            new_segment.penup()
            new_segment.color("white")
            new_segment.speed("fastest")
            new_segment.goto(positions[segment_number])
            self.segments.append(new_segment)
        self.center = self.segments[1]

    def move_up(self):
        """move paddle up a distance of A. If it is possible, return True, else False"""
        for segment in self.segments:
            if segment.ycor()+A >= HEIGHT/2:
                return False

        for segment in self.segments:
            segment.forward(A)
        return True

    def move_down(self):
        """move paddle down a distance of A. If it is possible, return True, else False"""
        for segment in self.segments:
            if segment.ycor()-A <= -HEIGHT/2:
                return False

        for segment in self.segments:
            segment.backward(A)
        return True

    def alternate_moving_dir(self):
        """move paddle up or down. The distance changes once the maximum point is reached"""
        if self.alternate_dir == "u":
            if not self.move_up():
                self.alternate_dir = "d"
        else:
            if not self.move_down():
                self.alternate_dir = "u"

    def move_to_set_location(self, set_y_position):
        """move paddle one step in the direction of the set location"""
        if math.fabs(self.center.ycor() - set_y_position) > 10:
            if self.center.ycor() > set_y_position:
                self.move_down()
            else:
                self.move_up()