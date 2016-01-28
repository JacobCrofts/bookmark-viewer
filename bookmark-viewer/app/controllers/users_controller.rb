class UsersController < ApplicationController

  def new
    @user = User.new
    @errors = @user.errors.full_messages
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to :login
    else
      @errors = @user.errors.full_messages
      render 'users/new'
    end
  end

  def edit
  end

  def show

  end

  def update
  end

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

end