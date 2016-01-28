class FileUpload < ActiveRecord::Base
  validates :user_id, presence: true
  validates :client_file, presence: true

  belongs_to :user

end
