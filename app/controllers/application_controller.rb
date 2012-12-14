class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    session[:user]
  end

  def logged_in?
    !!current_user
  end

  helper_method :current_user, :logged_in?
end
