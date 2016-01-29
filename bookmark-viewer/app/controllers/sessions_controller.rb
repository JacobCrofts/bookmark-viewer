class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(username: params[:user][:username])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to @user
    else
      flash[:notice] = "username/password combination does not match"
      redirect_to :login
    end
  end

  def destroy
    session.clear
    redirect_to :root
  end

end