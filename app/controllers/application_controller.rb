class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    session[:user]
  end

  def logged_in?
    !!current_user
  end

  def require_user
    if !logged_in?
      redirect_to root_path, notice: "You need to sign in first"
    end
  end

  helper_method :current_user, :logged_in?
end
