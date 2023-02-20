# Controller for questions
class QuestionsController < ApplicationController
  def ask
  end

  # The answer.html.erb will display the question you ask your coach as well as
  # his answer. The controller will need to read the question from params and
  # compute an instance variable @answer for the view to display. Here are two
  # requests that you should be able to handle:
  def answer
    question = params[:question]

    if question == 'I am going to work'
      @answer = 'Great'
    elsif question.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

end
