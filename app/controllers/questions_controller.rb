class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @details = params[:ask]
    @response = "I don't care, get dressed and go to work!"
    @response = 'Great!' if @details == "I'm going to work!"
    @response = "Silly question, get dressed and go to work!" if @details.last == '?'
  end
end
