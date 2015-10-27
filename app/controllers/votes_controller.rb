class VotesController < ApplicationController
  def new
    @choice = Choice.find(params[:choice_id])

    @vote = Vote.new
  end

  def create
    @choice = Choice.find(params[:choice_id])
    @vote = Vote.create
    @vote.choice = @choice
    @vote.save
    respond_to do |format|
    format.html { redirect_to :back }
    format.js
    end
  end


end
