class SessionsController < ApplicationController
  # Creates a user in the session and stores the omniauth data retrieved
  def create
    session[:user_id] = env["omniauth.auth"]
    # After getting the data, send the user to the main page
    redirect_to root_url
  end

  def destroy
    session[:user_id] = nil
    # After logging of, send the user to the main page
    redirect_to root_url
  end
end