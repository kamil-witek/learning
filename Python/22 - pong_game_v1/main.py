from turtle import Screen
import time
from paddle import Paddle
from ball import Ball
from scoreboard import Scoreboard
from playarea import Playarea
import random
from playarea import WIDTH, HEIGHT, A


screen = Screen()
screen.setup(width=WIDTH, height=HEIGHT)
screen.bgcolor("black")
screen.title("Pong game V1")
screen.tracer(0)

paddle_player   = Paddle(position_x=-WIDTH/2+20, position_y=0)
paddle_pc       = Paddle(position_x=+WIDTH/2-20, position_y=0)
ball            = Ball()
scoreboard      = Scoreboard()
playarea        = Playarea()

# vs - left player uses W/S, right player uses UP/DOWN, easy/medium/hard - left player uses W/S against computer
difficulty = screen.textinput(title="Difficulty selector", prompt='Choose difficulty: "pvp", "easy", "medium" or "hard"')
if difficulty == "easy":
    difficulty_level = 0        # simple moves up/down
elif difficulty == "medium":
    difficulty_level = 1        # moves following ball
elif difficulty == "hard":
    difficulty_level = 2        # computer calculates estimated ball hit position and moves there
else:
    difficulty_level = 3        # player plays against another player

screen.listen()
screen.onkeypress(key="w", fun=paddle_player.move_up)
screen.onkeypress(key="s", fun=paddle_player.move_down)
if difficulty_level == 3:
    screen.onkeypress(key="Up",   fun=paddle_pc.move_up)
    screen.onkeypress(key="Down", fun=paddle_pc.move_down)

playarea.draw_middle_line()

game_is_on     = True
max_iterations = 4
paddle_hits    = 0
while game_is_on:
    delay_loop_iterations = 1
    while delay_loop_iterations <= max_iterations:

        if random.randint(0, 5) == 2 or (difficulty_level == 1 and random.randint(0, 5) == 2):
            if difficulty_level == 0:
                paddle_pc.alternate_moving_dir()
            elif difficulty_level == 1:
                paddle_pc.move_to_set_location(ball.get_ball_y_coordinate_ahead())
            elif difficulty_level == 2:
                paddle_pc.move_to_set_location(ball.estimate_ball_end_coordinates())
        screen.update()
        time.sleep(0.01)
        delay_loop_iterations += 1

    ball.move_ball()
    wall_collision        = ball.detect_collision_wall()
    ball_collision_player = ball.detect_collision_paddle(paddle_player.segments)
    ball_collision_pc     = ball.detect_collision_paddle(paddle_pc.segments)
    if wall_collision == 1:
        ball.reset_position(45)
        scoreboard.increase_score(1)
        paddle_hits = 0
    elif wall_collision == 2:
        ball.reset_position(135)
        scoreboard.increase_score(0)
        paddle_hits = 0
    elif ball_collision_player or ball_collision_pc:
        paddle_hits += 1

    if paddle_hits < 2:
        max_iterations = 5
    elif paddle_hits < 4:
        max_iterations = 2
    else:
        max_iterations = 1

    if scoreboard.get_max_score() >= 10:
        game_is_on = False
        scoreboard.display_winner(difficulty_level)


screen.exitonclick()