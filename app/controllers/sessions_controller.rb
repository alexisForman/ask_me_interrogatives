class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
      flash[:notice] = "Login successful."
      redirect_to user_path(user[:id])
    else
      flash[:notice] = "Login failed."
      render :new, status: :unprocessable_entity
    end
  end
end