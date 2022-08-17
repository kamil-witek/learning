from turtle import Turtle
import random
from scoreboard import WIDTH, HEIGHT
from player import FINISH_LINE_Y

COLORS                 = ["red", "orange", "yellow", "green", "blue", "purple"]
STARTING_MOVE_DISTANCE = 5
MOVE_INCREMENT         = 10
EDGE_SAFE_OFFSET       = 50

class CarManager:
    def __init__(self):
        """create 5 starting cars"""
        self.cars = []
        self.spawn_cars(5)

    def spawn_cars(self, nbr_cars):
        """generate <nbr_cars> amount of new cars in the middle of screen"""
        for _ in range(nbr_cars):
            new_car = Turtle("square")
            new_car.shapesize(stretch_len=2.0, stretch_wid=1.0)
            new_car.color(random.choice(COLORS))
            new_car.penup()
            new_car.setheading(180)
            new_car.goto(0, 0)
            self.cars.append(new_car)

    def generate_random_car_position(self, at_right_edge):
        """returns tuple consisting of x and y coordinates of random generated position on screen.
        If at_right_edge = True, then spawn cars on the right side of screen"""
        if at_right_edge:
            random_x = WIDTH/2+20
        else:
            random_x = (random.randint(-WIDTH/2+EDGE_SAFE_OFFSET, WIDTH/2-EDGE_SAFE_OFFSET)//10)*10.0
        random_y = (random.randint(-FINISH_LINE_Y+EDGE_SAFE_OFFSET, FINISH_LINE_Y-EDGE_SAFE_OFFSET)//10)*10.0
        position = (random_x, random_y)
        return position

    def spread_cars(self):
        """randomly position cars on screen"""
        for car in self.cars:
            car.goto(self.generate_random_car_position(at_right_edge=False))

    def move_cars(self, level):
        """move all cars by a level-determined distance"""
        for car in self.cars:
            car.forward(STARTING_MOVE_DISTANCE + (level-1)*MOVE_INCREMENT)
            if car.xcor() < -WIDTH/2-20:
                car.goto(self.generate_random_car_position(at_right_edge=True))
                car.color(random.choice(COLORS))

    def collision_detected(self, test_obj):
        """tests if any car collided with the object at location <test_object> - turtle"""
        for car in self.cars:
            if car.xcor()-20 <= test_obj.xcor() <= car.xcor()+20:
                if car.ycor()-10 <= test_obj.ycor() <= car.ycor()+10:
                    return True
        return False