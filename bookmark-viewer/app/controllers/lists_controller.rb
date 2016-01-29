class ListsController < ApplicationController

  def index
    @user = User.find(params[:user_id])
  end

  def create
  end

  def new
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

end