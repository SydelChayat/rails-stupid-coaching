class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # every controller action we have access to params
    # If we send a form, we will grab the data from params
    @question = params[:question]
    @answer = "Default answer"
    if @question == "I am going to work"
      @answer = 'Great!'

    elsif @question == '?'
      @answer = 'Silly question, get dressed and go to work!'

    else @answer = "I don't care, get dressed and go to work!"
    end
  end
end


#controller = QuestionsController.new
#controller.answer
