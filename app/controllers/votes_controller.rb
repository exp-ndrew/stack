class VotesController < ApplicationController

  def new
    @vote = Vote.new
    if current_user
      redirect_to root_url
    end
  end

  def create
    @vote = Vote.new(vote_params)
    if @vote.save
      flash[:notice] = "You have successfully voted."
      redirect_to question_path
    else
      flash[:alert] = "Please try again."
      redirect_to question_path
    end
  end

  def edit
  end

  def update
  end

private

  def vote_params
    params.require(:vote).permit(:response_id, :value, :user_id)
  end

end

