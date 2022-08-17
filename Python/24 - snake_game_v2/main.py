from turtle import Screen
from snake import Snake
import time
from food import Food
from scoreboard import Scoreboard

screen = Screen()
screen.setup(width=600, height=600)
screen.bgcolor("black")
screen.title("Snake game")
screen.tracer(0)

snake      = Snake()
food       = Food()
scoreboard = Scoreboard()

screen.listen()
screen.onkeypress(  key="Up",    fun=snake.up)
screen.onkeyrelease(key="Up",    fun=snake.reset_speed_boost)
screen.onkeypress(  key="Down",  fun=snake.down)
screen.onkeyrelease(key="Down",  fun=snake.reset_speed_boost)
screen.onkeypress(  key="Right", fun=snake.right)
screen.onkeyrelease(key="Right", fun=snake.reset_speed_boost)
screen.onkeypress(  key="Left",  fun=snake.left)
screen.onkeyrelease(key="Left",  fun=snake.reset_speed_boost)
screen.onkeypress(  key="e",     fun=snake.extend)

game_is_on = True
while game_is_on:
    loop_count = 0
    while loop_count < 10:
        if snake.boosted_speed():
            loop_count += 2
        else:
            loop_count += 1
        time.sleep(0.1/10)
        screen.update()
        scoreboard.update_display()
    snake.move()
    screen.update()

    # detect collision with food
    if snake.head.distance(food) < 15:
        food.refresh()
        scoreboard.increment_score()
        snake.extend()

    # detect collision with wall
    if snake.head.xcor() > 280 or snake.head.xcor() < -280 or snake.head.ycor() > 280 or snake.head.ycor() < -280:
        # game_is_on = False
        # scoreboard.game_over(reason="Snake banged its head 🙁.")
        scoreboard.reset_score()
        snake.reset()

    # check for self collision
    if snake.snake_is_self_collided():
        # game_is_on = False
        # scoreboard.game_over(reason="Snake ate itself 🙁.")
        scoreboard.reset_score()
        snake.reset()

screen.exitonclick()