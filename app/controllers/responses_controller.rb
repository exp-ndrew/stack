class ResponsesController < ApplicationController

  def new

  end

  def create
    @question = Question.find(params[:response][:question_id])
    @response = @question.responses.new(response_params)
    if @response.save()
      flash[:notice] = "Saved"
    else
      flash[:alert] = "Failed"
    end
    redirect_to question_path(response_params[:question_id])
  end

private

  def response_params
    params.require(:response).permit(:response, :user_id, :question_id)
  end
end
