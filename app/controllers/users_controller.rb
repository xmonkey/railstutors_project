class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
    if @user.save
      session[:user] = @user
      redirect_to root_path, :notice => "User #{@user.name} was created!"
    else
      render :new
    end
  end
end
