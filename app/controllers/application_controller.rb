class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # If a current user is not found, redirect the user to the root page
  def authenticate
    redirect_to "/" unless current_user
  end

  private

  # Returns user data from the session if we have it
  def current_user
	@current_user ||= session[:user_id] if session[:user_id]
  end
  	helper_method :current_user
end
