class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer
  end

  def coach_answer
    if params[:question].include? '?'
      'Silly question, get dressed and go to work!'
    elsif params[:question] != 'I am going to work'
      "I don't care, get dressed and go to work!"
    else
      'Great!'
    end
  end
end
