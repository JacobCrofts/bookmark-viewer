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
      flash[:alert] = @user.errors.full_messages.first
      redirect_to :new_user
    end
  end

  def edit
  end

  def show
    @user = User.find(params[:id])
  end

  def update
  end

  def user_params
    params.require(:user).permit(:username, :email, :password, :first_name, :last_name)
  end

end