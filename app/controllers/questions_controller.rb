class QuestionsController < ApplicationController

  before_filter :authorize, only: [:new, :create, :destroy]

  def index
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      flash[:notice] = "Your question has been saved."
      redirect_to root_url
    else
      flash[:notice] = "Your question sucks. Fail! Try again."
      render "new"
    end
  end

  def show
    @question = Question.find(params[:id])
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    flash[:notice] = "Your question was successfully deleted."
    redirect_to root_url
  end

private

  def question_params
    params.require(:question).permit(:question, :user_id)
  end

end
