class ListsController < ApplicationController

  def create
    @user = current_user
    @list = @user.lists.new(list_params)
    if @list.save
      flash[:notice] = "List successfully created!"
      redirect_to @user
    else
      flash[:alert] = @list.errors.full_messages.first
      redirect_to :new_list
    end
  end

  def new
    if current_user
      @list = List.new
    else
      flash[:notice] = "You must login to create a new form!"
      redirect_to :login
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