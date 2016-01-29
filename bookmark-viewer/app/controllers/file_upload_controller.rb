class FileUploadController < ApplicationController

  def new
    @file_upload = FileUpload.new
  end

  def create
    @bookmark_html = params[:file_upload][:client_file_file_name].read
    ParseUploadedBookmarksFile.call(@bookmark_html)
    redirect_to new_file_upload_path
  end

  def destroy

  end

private
  def file_upload_params
    params.require(:file_upload).permit(:client_file_file_name, :client_file_content_type, :client_file_file_size)
  end

end
