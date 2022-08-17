from turtle import Turtle, Screen

tim = Turtle()
screen = Screen()

def move_forwards():
    tim.forward(10)

screen.listen()
screen.onkeypress(fun=move_forwards, key="space")

screen.exitonclick()