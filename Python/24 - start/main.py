# standard way of opening files, have to remember to close the file
file = open("my_file.txt")
contents = file.read()
print(contents)
file.close()

# a better method of opening files
with open("my_file.txt") as file:
    contents = file.read()
    print(contents)

# by adding mode="w" we can write data
with open(file="new_file.txt", mode="w") as file:
    file.write("I'm a new file")

# by adding mode="a" we can append data
with open(file="my_file.txt", mode="a") as file:
    file.write("\nText added in Python")