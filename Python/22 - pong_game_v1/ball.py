from turtle import Turtle
import random
import math
from playarea import WIDTH, HEIGHT, A

HEADINGS = [45, 135, 225, 315]  # default, starting ball directions

class Ball(Turtle):
    def __init__(self):
        """create ball, choose random starting heading"""
        super(Ball, self).__init__("square")
        self.penup()
        self.color("red")
        self.angle = random.choice(HEADINGS)

        # self.debug_turtle = Turtle("turtle")
        # self.debug_turtle.color("green")

    def move_ball(self):
        """function calculates the x and y coordinates of the move and moves the ball
        The position is dependent on the angle -heading- of the ball"""
        MOVE_AMOUNT = 10
        new_x = self.xcor() + math.cos(self.angle*0.017453)*MOVE_AMOUNT
        new_y = self.ycor() + math.sin(self.angle*0.017453)*MOVE_AMOUNT
        self.goto(new_x, new_y)

    def detect_collision_wall(self):
        """Check if the ball touched wall. 0-wall_up_or_down was touched, additionally the next ball angle was
         calculated - bounce  1-wall_left  2-wall_right, None - no collision"""
        if self.ycor()+15 >= HEIGHT/2 or self.ycor()-15 <= -HEIGHT/2:
            # collision with upper wall
            y_angle_difference = 180 - self.angle
            new_angle = y_angle_difference + 180
            self.angle = new_angle + random.randint(-5, 5)
            return 0
        elif self.xcor()-15 <= -WIDTH/2:
            return 1
        elif self.xcor()+15 >= WIDTH/2:
            return 2
        return None

    def detect_collision_paddle(self, paddle_segments):
        """Function checks if ball collided with a paddle, returns True if collided, False otherwise"""
        if self.xcor() < 0:
            test = 90 < self.angle < 270        # moving left AND the ball is on left side
        else:
            test = not(90 < self.angle < 270)   # moving right AND the ball is on right side

        for segment in paddle_segments:
            # check if ball is close to paddle and the ball is moving in the right direction for bounce to occur
            if self.distance(segment) <= 20 and test:
                self.angle = 360-self.angle+180 + random.randint(-5, 5)
                if self.angle > 360:
                    self.angle -= 360
                elif self.angle < 0:
                    self.angle += 360
                return True
        return False

    def calculate_end_triangle_coordinates(self, x0, y0, alfa0_raw, d_set_edge):
        """Function calculates the triangle x and y coordinates and the resultant heading of ball. Sort of ray casting.
            v (x0, y0, original_ball_heading), direction lower right corner
           |a\   alpha0 - local angle
           |   \
         dy|     \
           |.______\ X   returned [x, y, new_heading_after_bounce]
               dx
                    v X returned position [x, y, new_heading_after_bounce]
                  / |
                /   |
              /     | dy
            /a_____.|
            ^   dx
            ^(x0, y0, original_ball_heading), direction upper right corner
        d_set_edge - if set to "y" - then the x coordinate will be possibly ot of playable area, y is locked to upper/lower edge
        if set to "x" - then the y coordinate may be out of playable area, x is locked to the max width to the right
        you can use "y" to obtain all the ray castings of ball movement up to a point when the ball leaves the playable area
        then don't use last results, instead put into "x" mode and get the resultant y coordinate of ball when the right edge is hit
        CAUTION! WORKS ONLY IN RIGHT DIRECTION - ENEMY ON RIGHT, when the ball moves to the left, function returns random y
        values to make the opponent look like he is guessing... x coordinate is set to max so that other function estimate_ball_end_coordinates
        stops after only one go. works when ball is moving to the right, either in upper direction of lower.
        returns [xk yk alfak_raw]"""
        if alfa0_raw == 0:
            alfa0_raw = 0.01
        if 360 > alfa0_raw > 270:
            alfa0 = alfa0_raw-270   # create local angle
            if d_set_edge == "y":
                dy = math.fabs(-HEIGHT/2 - y0)
                dx = math.tan(alfa0*0.017453)*dy
            else:
                dx = math.fabs((WIDTH-40)/2 - x0)
                dy = dx/math.tan(alfa0*0.017453)
            new_angle = 360-alfa0_raw
            return [x0+dx, y0-dy, new_angle]
        elif 90 > alfa0_raw > 0:
            alfa0 = alfa0_raw
            if d_set_edge == "y":
                dy = math.fabs(HEIGHT/2 - y0)
                dx = dy/math.tan(alfa0 * 0.017453)
            else:
                dx = math.fabs((WIDTH-40)/2 - x0)
                dy = dx*math.tan(alfa0 * 0.017453)
            new_angle = 360 - alfa0_raw
            return [x0+dx, y0+dy, new_angle]
        else:
            return [WIDTH, random.randint(-HEIGHT//2, HEIGHT//2), 90]

    def estimate_ball_end_coordinates(self):
        """returns estimated y position of ball
        function does a sort of ray casting, estimating the final position
        """
        x0    = self.xcor()
        y0    = self.ycor()
        alfa0 = self.angle
        d     = "y"

        estimation_attempts_left = 10
        continue_estimating      = True
        while estimation_attempts_left > 0 and continue_estimating:
            estimation_attempts_left -= 1
            raw_out_data = self.calculate_end_triangle_coordinates(x0=x0, y0=y0, alfa0_raw=alfa0, d_set_edge=d)
            new_x     = raw_out_data[0]
            new_y     = raw_out_data[1]
            new_alfa0 = raw_out_data[2]
            if math.fabs(new_x - WIDTH/2) < 30:
                continue_estimating = False

            if d == "y" and new_x > WIDTH/2:    # first part, estimate pre final position
                d = "x"                         # final part - final fine position, as written in docs, discard reults
            else:
                x0 = new_x                      # valid results, use in further estimation
                y0 = new_y
                alfa0 = new_alfa0
        #self.debug_turtle.goto(new_x, new_y)
        return new_y

    def get_ball_y_coordinate_ahead(self):
        if 180 > self.angle > 0:
            return self.ycor() + 20
        else:
            return self.ycor() - 20

    def reset_position(self, angle):
        self.home()
        self.angle = angle