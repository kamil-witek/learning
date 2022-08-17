from turtle import Turtle
from playarea import WIDTH, HEIGHT, A

SCORE_POSITION = [0, 220]
SCORE_OFFSET   = 100
FONT           = ('System', 50, 'normal')

class Scoreboard(Turtle):
    def __init__(self):
        """initialize, create turtle and set its parameters"""
        super(Scoreboard, self).__init__()
        self.hideturtle()
        self.color("white")
        self.penup()
        self.score             = [0, 0]     # 0 - player, 1 - pc
        self.update_score()

    def increase_score(self, player_number):
        """increase score of player_number = 0-player or 1-pc"""
        self.score[player_number] += 1
        self.update_score()

    def update_score(self):
        """redraw score on screen"""
        self.clear()
        score_pos = (SCORE_POSITION[0]-SCORE_OFFSET, SCORE_POSITION[1])
        self.goto(score_pos)
        self.write(arg=f"{self.score[0]}", move=False, align="center", font=FONT)
        score_pos = (SCORE_POSITION[0]+SCORE_OFFSET, SCORE_POSITION[1])
        self.goto(score_pos)
        self.write(arg=f"{self.score[1]}", move=False, align="center", font=FONT)

    def display_winner(self, difficulty_level):
        """display ending text showing the winner. display the difficulty"""
        self.color("red")
        self.goto(0, 0)
        if self.score[0] == self.score[1]:
            self.write(arg=f"DRAW!", move=False, align="center", font=FONT)
        elif self.score[0] > self.score[1]:
            self.write(arg=f"LEFT WINS!", move=False, align="center", font=FONT)
        else:
            self.write(arg=f"RIGHT WINS!", move=False, align="center", font=FONT)
        self.goto(0, -80)
        if difficulty_level == 0:
            self.write(arg=f"EASY difficulty", move=False, align="center", font=FONT)
        elif difficulty_level == 1:
            self.write(arg=f"MEDIUM difficulty", move=False, align="center", font=FONT)
        elif difficulty_level == 2:
            self.write(arg=f"HARD difficulty", move=False, align="center", font=FONT)
        else:
            self.write(arg=f"VS difficulty", move=False, align="center", font=FONT)


    def get_max_score(self):
        """return the max score - either player/pc"""
        return max(self.score[0], self.score[1])
