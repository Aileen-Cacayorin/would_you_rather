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

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    respond_to do |format|
    format.html { redirect_to :back }
    format.js
    end
  end
end
