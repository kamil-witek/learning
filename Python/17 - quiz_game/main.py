from question_model import Question
from data import question_data
from quiz_brain import QuizBrain


# generate question bank
question_bank = []
for question_bundle in question_data:
    ## original data
    #question_text = question_bundle["text"]
    #answer        = question_bundle["answer"]
    question_text = question_bundle["question"]
    answer        = question_bundle["correct_answer"]
    new_question  = Question(question_text, answer)
    question_bank.append(new_question)

quiz = QuizBrain(question_bank)

while quiz.still_has_questions():
    quiz.next_question()

quiz.sum_up_game()