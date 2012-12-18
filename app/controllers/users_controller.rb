class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.build(params[:user])
    if @user.save
      session[:user] = @user
      redirect_to root_path, :notice => "User #{@user.name} was created!"
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @comments = @user.recent(@user.comments)
    @posts = @user.recent(@user.posts)
    @votes = @user.recent(@user.votes)
  end
end
