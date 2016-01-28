class CreateSavedBookmarks < ActiveRecord::Migration
  def change
    create_table :saved_bookmarks do |t|

      t.timestamps null: false
    end
  end
end
