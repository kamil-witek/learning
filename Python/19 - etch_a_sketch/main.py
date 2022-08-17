from turtle import Turtle, Screen

def move_fwd():
    timmy.forward(10)

def move_bwd():
    timmy.backward(10)

def rotate_cc():
    timmy.left(10)

def rotate_c():
    timmy.right(10)

def clear_drawing():
    timmy.clear()
    timmy.penup()
    timmy.home()
    timmy.pendown()
    # timmy.reset()


timmy  = Turtle()
screen = Screen()

screen.listen()
screen.onkey(key="w", fun=move_fwd)
screen.onkey(key="s", fun=move_bwd)
screen.onkey(key="c", fun=clear_drawing)
screen.onkey(key="a", fun=rotate_cc)
screen.onkey(key="d", fun=rotate_c)

screen.exitonclick()
