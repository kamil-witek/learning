from turtle import Turtle


STARTING_POSITIONS = [(0, 0), (-20, 0), (-40, 0)]
MOVE_DISTANCE      = 20
UP    = 90
LEFT  = 180
RIGHT = 0
DOWN  = 270

class Snake:
    def __init__(self):
        self.segments = []
        self.create_snake()
        self.head                = self.segments[0]
        self.last_screen_heading = RIGHT
        self.speed_boost         = False

    def create_snake(self):
        for turtle_number in range(3):
            self.add_segment(STARTING_POSITIONS[turtle_number])

    def move(self):
        for seg_num in range(len(self.segments)-1, 0, -1):
            new_xy = self.segments[seg_num - 1].pos()
            self.segments[seg_num].goto(new_xy)
        self.head.forward(MOVE_DISTANCE)
        self.last_screen_heading = self.head.heading()

    def up(self):
        if self.last_screen_heading == UP:
            self.speed_boost = True
        elif self.last_screen_heading != DOWN:
            self.head.setheading(UP)

    def down(self):
        if self.last_screen_heading == DOWN:
            self.speed_boost = True
        elif self.last_screen_heading != UP:
            self.head.setheading(DOWN)

    def left(self):
        if self.last_screen_heading == LEFT:
            self.speed_boost = True
        elif self.last_screen_heading != RIGHT:
            self.head.setheading(LEFT)

    def right(self):
        if self.last_screen_heading == RIGHT:
            self.speed_boost = True
        elif self.last_screen_heading != LEFT:
            self.head.setheading(RIGHT)

    def add_segment(self, position):
        new_segment = Turtle("square")
        new_segment.color("white")
        new_segment.penup()
        new_segment.goto(position)
        self.segments.append(new_segment)

    def extend(self):
        self.add_segment(self.segments[-1].position())

    def snake_is_self_collided(self):
        nbr_of_collisions = 0
        # check collision of head segment with other segments, start from second segment - exclude head
        for segment in self.segments[1:]:
            if segment.distance(self.head) < 5:
                nbr_of_collisions += 1
        if nbr_of_collisions > 0:
            return True
        return False

    def reset_speed_boost(self):
        self.speed_boost = False

    def boosted_speed(self):
        return self.speed_boost