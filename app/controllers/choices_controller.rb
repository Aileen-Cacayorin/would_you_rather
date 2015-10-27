class ChoicesController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @choice = Choice.new
  end

  def create
    @question = Question.find(params[:question_id])
    @choice = Choice.create(choice_params)
    @choice.question = @question
    @choice.save
    respond_to do |format|
    format.html { redirect_to question_path(@question) }
    format.js
  end


  end


private
  def choice_params
    params.require(:choice).permit(:description)
  end
end
