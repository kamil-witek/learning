from turtle import Turtle

ALIGNMENT = "center"
FONT      = ('Consolas', 18, 'bold')

class Scoreboard(Turtle):
    def __init__(self):
        super(Scoreboard, self).__init__()
        self.score = None
        self.hideturtle()
        self.penup()
        self.goto(0, 260)
        self.reset_score()

    def update_display(self):
        self.clear()
        self.color("red")
        self.goto(0, 260)
        self.write(arg=f"Score: {self.score}", move=False, align=ALIGNMENT, font=FONT)

    def reset_score(self):
        self.score = 0
        self.update_display()

    def increment_score(self):
        self.score += 1
        self.update_display()

    def game_over(self, reason):
        self.goto(0, 0)
        self.write(arg=f"Game over, {reason}", move=False, align=ALIGNMENT, font=FONT)