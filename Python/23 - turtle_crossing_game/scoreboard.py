from turtle import Turtle

WIDTH  = 600
HEIGHT = 600

FONT      = ("Courier", 24, "bold")
SCORE_POS = (-WIDTH/2+20, HEIGHT/2-50)

class Scoreboard(Turtle):
    def __init__(self):
        """create turtle responsible for displaying score and endgame"""
        super(Scoreboard, self).__init__()
        self.penup()
        self.hideturtle()
        self.level = 1
        self.update_score()

    def update_score(self):
        """update score displayed on screen"""
        self.clear()
        self.goto(SCORE_POS)
        self.write(arg=f"Level: {self.level}", move=False, align='left', font=FONT)

    def increase_level(self):
        """increases level"""
        self.level += 1
        self.update_score()

    def get_level(self):
        """returns game level"""
        return self.level

    def display_game_over(self):
        """displays game over screen"""
        self.goto(0, -10)
        self.write(arg=f"GAME OVER", move=False, align='center', font=FONT)
