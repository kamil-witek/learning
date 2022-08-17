#TODO: Create a letter using starting_letter.txt 
#for each name in invited_names.txt
#Replace the [name] placeholder with the actual name.
#Save the letters in the folder "ReadyToSend".
    
#Hint1: This method will help you: https://www.w3schools.com/python/ref_file_readlines.asp
    #Hint2: This method will also help you: https://www.w3schools.com/python/ref_string_replace.asp
        #Hint3: THis method will help you: https://www.w3schools.com/python/ref_string_strip.asp

PLACEHOLDER = "[name]"

def read_names():
    """read all names, return a list of them"""
    with open("Input/Names/invited_names.txt") as file:
        raw_names = file.readlines()
    for name_index in range(len(raw_names)):
        raw_names[name_index] = raw_names[name_index].strip()      # get rid of \n at the end of each entry, alternative: rstrip("\n")
    return raw_names

def read_letter_template():
    """read and return a template letter"""
    with open("Input/Letters/starting_letter.txt") as file:
        letter_template = file.read()
    return letter_template

def write_letter(name, letter):
    """write contents of <letter> to Output/ReadyToSend/letter_for_<name>.txt"""
    with open(file=f"Output/ReadyToSend/letter_for_{name}.txt", mode="w") as file:
        file.write(letter)


all_names       = read_names()
letter_template = read_letter_template()
for name in all_names:
    personalized_letter = letter_template.replace(PLACEHOLDER, name)
    write_letter(name, personalized_letter)