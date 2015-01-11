class SessionsController < ApplicationController
  def new
  end

  def create
    # fail
    if user = User.authenticate(params[:email], params[:password])
      session[:user_id] = user.id
      flash[:notice] = "welcome back, #{user.name}!"
      redirect_to user
    else
      flash.now[:alert] = "Invalid email/password combination!"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Now you're signed out"
  end
end
