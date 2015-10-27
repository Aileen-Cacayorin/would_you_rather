class StaticPagesController < ApplicationController
  def index
    @questions = Question.all
    @question = Question.new
  end
end
