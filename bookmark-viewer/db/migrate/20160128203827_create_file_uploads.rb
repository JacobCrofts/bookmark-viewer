class CreateFileUploads < ActiveRecord::Migration
  def change
    create_table :file_uploads do |t|
      t.attachment :client_file
      t.references :user

      t.timestamps null: false
    end
  end
end
