import time
from turtle import Screen
from player import Player
from car_manager import CarManager
from scoreboard import Scoreboard, WIDTH, HEIGHT

screen = Screen()
screen.setup(width=WIDTH, height=HEIGHT)
screen.tracer(0)

player      = Player()
scoreboard  = Scoreboard()
car_manager = CarManager()

screen.listen()
screen.onkeypress(key="Up", fun=player.move_up)

car_manager.spread_cars()
game_is_on = True
while game_is_on:
    time.sleep(0.1)
    car_manager.move_cars(scoreboard.get_level())       # periodically move cars
    if player.crossed_finish_line():                        # if player crossed finish line
        scoreboard.increase_level()                         # increase level on screen
        player.move_to_start()                              # move player to start
        car_manager.spawn_cars(5)                           # spawn additional 5 cars
        car_manager.spread_cars()                           # randomly spread all cars

    screen.update()                                     # update screen
    if car_manager.collision_detected(player):          # if player touched a car
        game_is_on = False                                  # set main loop ending flag
        screen.update()                                     # update screen
        scoreboard.display_game_over()                      # display game over screen
        player.refresh_position()                           # stamp player turtle so its on top of cars

screen.exitonclick()