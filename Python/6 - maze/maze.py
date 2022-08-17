# https://reeborg.ca/reeborg.html?lang=en&mode=python&menu=worlds%2Fmenus%2Freeborg_intro_en.json&name=Maze&url=worlds%2Ftutorial_en%2Fmaze1.json

def turn_right():
    turn_left()
    turn_left()
    turn_left()
    


# block 1 start - make sure to have a wall on right side
while front_is_clear():
    move()

#alternatively - just move left
while right_is_clear():
    turn_right()
# block 1 end


# block 2 start - follow right side of wall
while not at_goal():
    if front_is_clear():
        move()
    else:
        turn_left()
    
    if right_is_clear():
        turn_right()