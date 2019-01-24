class ApplicationController < ActionController::Base
  before_action :authorized
  helper_method :logged_in?

  def authorized
    redirect_to login_path unless logged_in?
  end

  def logged_in?
    !!current_user
  end

  def current_user
    @current_user = User.find(session[:user_id]) if session[:user_id]
  end
end
