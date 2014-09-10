class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      flash[:notice] = "You have logged in."
      session[:user_id] = user.id
      redirect_to root_url
    else
      flash[:alert] = "You have failed. Email or password is invalid."
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
    flash[:notice] = "Logged out!"
  end
end
