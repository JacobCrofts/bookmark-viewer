class FileUploadController < ApplicationController

  def new
    @file = File_upload.new
  end

  def create
    @file_upload = File_upload.new(file_upload_params)
    if @file_upload != nil
      @file_upload.parse_file


      flash[:success] = "The Bookmark file was added!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy

  end

end
