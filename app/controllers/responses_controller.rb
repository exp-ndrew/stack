class ResponsesController < ApplicationController

  def new

  end

  def create
    @question = Question.find(params[:response][:question_id])
    @response = @question.responses.new(response_params)
    if @response.save()
      flash[:notice] = "Saved"
      respond_to do |format|
        # format.html { redirect_to question_path(response_params[:question_id]) }
        format.js
      end
    else
      flash[:alert] = "Failed"
      redirect_to question_path(response_params[:question_id])
    end
    # redirect_to question_path(response_params[:question_id])
  end

private

  def response_params
    params.require(:response).permit(:response, :user_id, :question_id)
  end
end
