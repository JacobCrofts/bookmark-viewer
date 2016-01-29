require 'screencap'

class ListsController < ApplicationController

  def index
    @user = User.find(params[:user_id])
  end

  def create
    @user = User.find(session[:user_id])
    @list = @user.lists.new(list_params)
    if @list.save
      flash[:notice] = "List successfully created!"
      redirect_to :user_lists
    else
      flash[:alert] = @list.errors.full_messages.first
      redirect_to :new_user_list
    end
  end

  def new
    if session[:user_id].to_i == params[:user_id].to_i
      puts "VERIRIED"
      @list = List.new
      @user = User.find(params[:user_id])
    else
      if [session[:user_id]]
        flash[:notice] = "You must be logged in as #{User.find(params[:user_id]).username} to create a list here"
        redirect_to User.find(params[:user_id])
      else
        flash[:notice] = "You must login to create a new form!"
        redirect_to :login
      end
    end
  end

  def edit
  end

  def show
    @list = List.find(params[:id])
  end

  def update
  end

  def destroy
  end

  def list_params
    params.require(:list).permit(:name)
  end

end
