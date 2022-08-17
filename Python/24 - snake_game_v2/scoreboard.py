from turtle import Turtle

ALIGNMENT = "center"
FONT      = ('Consolas', 18, 'bold')

class Scoreboard(Turtle):
    def __init__(self):
        super(Scoreboard, self).__init__()
        self.score      = 0
        self.high_score = self.read_score_from_file()
        self.hideturtle()
        self.penup()
        self.goto(0, 260)
        self.update_display()

    def update_display(self):
        self.clear()
        self.color("red")
        self.goto(0, 260)
        self.write(arg=f"Score: {self.score}, High score: {self.high_score}", move=False, align=ALIGNMENT, font=FONT)

    def reset_score(self):
        if self.score > self.high_score:
            self.high_score = self.score
            self.write_score_to_file(self.score)
        self.score = 0
        self.update_display()

    def increment_score(self):
        self.score += 1
        self.update_display()

    # def game_over(self, reason):
    #     self.goto(0, 0)
    #     self.write(arg=f"Game over, {reason}", move=False, align=ALIGNMENT, font=FONT)

    def read_score_from_file(self):
        """returns score read from file"""
        with open("data.txt") as file:
            score_raw = file.read()
        return int(score_raw)

    def write_score_to_file(self, score):
        """writes score passed as argument to file"""
        with open(file="data.txt", mode="w") as file:
            file.write(f"{score}")
