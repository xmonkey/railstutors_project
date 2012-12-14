class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_name(params[:name])
    if user && user.authenticate(params[:password])
      session[:user] = user
      redirect_to root_url, notice: "Logged in as #{user.name}"
    else
      flash[:error] = "Wrong user name/password!"
      render :new
    end
  end

  def destroy
    session[:user] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end
