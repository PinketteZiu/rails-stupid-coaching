class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @ask = params[:answer]
    if @ask == 'I am going to work'
      @message = 'Great!'
    elsif @ask.end_with?('?')
      @message = 'Silly question, get dressed and go to work!'
    else
      @message = 'I do not care, get dressed and go to work!'
    end
  end
end
