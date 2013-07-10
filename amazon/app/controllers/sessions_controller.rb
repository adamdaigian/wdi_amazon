class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.new.find_by_email(params[:user][:email])

    if user.authentication(params[:user][:password])
      session[:user_id] = user.id
      redirect_to root_path, :notice => "Logged in!"
    else
      raise "Login did not succeed :("
    end
  end
end
