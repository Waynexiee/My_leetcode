require 'json'
class MultChoiQuiz
  attr_accessor :title, :questions, :score, :quesNum
  TotalScore = 100
  def initialize(quiz)
    self.title = quiz["title"]
    self.questions = quiz["questions"]
    self.score = 0
    self.quesNum = questions.size
  end

  def get_process_answer
    questions.each_with_index do |ques, idx|
      show_qustion(ques["question"], idx)
      show_answers_to_choose(ques["answers"])
      prompt("Please choose one answer, press enter to come to next question")
      answer = gets.chomp
      check_answer(answer, ques["correct_idx"])
    end
  end

  def show_final_score
    prompt("Your score is #{score.ceil}.")
  end

  private
    def show_qustion(question, idx)
      prompt("#{idx+1}. #{question}")
    end

    def show_answers_to_choose(answers)
      answers.each_with_index do |ans, idx|
        prompt("  #{idx+1}. #{ans}")
      end
    end

    def check_answer(ans, expected_ans)
      if ans.strip.to_i == expected_ans + 1
        self.score = score + TotalScore * 1.0 / quesNum
      end
    end

    def prompt(str)
      puts str
    end
end

#test
quiz_json = {
	"title": "HTML Elements",
	"questions": [
		{
			"question": "What is the correct definition of an HTML element?",
			"answers": [
				"The second, or closing, HTML tag. Closing tags have a forward slash (/) inside of them.",
				"The first, or opening, HTML tag.",
				"An HTML tag and the content that it contains or marks up.",
				"HTML code that does not require opening or closing tags."
			],
			"correct_idx": 2
		},
		{
			"question": "What is the purpose of indentation and whitespace?",
			"answers": [
				"To make sure the browser correctly interprets nested elements in an HTML file.",
				"To make code in an HTML file more readable.",
				"To comment out code you don't need.",
				"To change the display of elements in the browser."
			],
			"correct_idx": 1
		},
		{
			"question": "Which of the following tags instructs the browser to expect a well-formed HTML document?",
			"answers": [
				"<!DOCTYPE html>",
				"<!DOCTYPE>",
				"<html>",
				"<!DOCTYPE html5>"
			],
			"correct_idx": 0
		}
]
}.to_json

my_quiz = JSON.parse(quiz_json)


quiz = MultChoiQuiz.new(my_quiz)
quiz.get_process_answer
quiz.show_final_score
