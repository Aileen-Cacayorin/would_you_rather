class QuestionsController < ApplicationController
  def new
    @question = Question.new
  end

  def create
    @question = Question.create()
    if @question.save
      redirect_to question_path(@question)
    end
  end

  def show
    @question = Question.find(params[:id])
    @choices = @question.choices
  end
end
