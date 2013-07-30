class SessionsController < ApplicationController
  def create
    session[:user_id] = env["omniauth.auth"]
    redirect_to properties_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end