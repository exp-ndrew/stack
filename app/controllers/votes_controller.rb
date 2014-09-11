class VotesController < ApplicationController

  def new
    @vote = Vote.new
    if current_user
      redirect_to root_url
    end
  end

  def create
    @vote = Vote.new(vote_params)
    @response = Response.find(@vote.response_id)

    if @vote.save
      flash[:notice] = "You have successfully voted."
      respond_to do |format|
        format.html { redirect_to @question }
        format.js
      end
    else
      flash[:alert] = "Please try again."
      redirect_to @question
    end
  end


private

  def vote_params
    params.require(:vote).permit(:response_id, :value, :user_id)
  end

end
