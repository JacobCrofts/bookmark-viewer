class CreateSavedBookmarks < ActiveRecord::Migration
  def change
    create_table :saved_bookmarks do |t|
      t.integer :list_id
      t.integer :bookmark_id

      t.timestamps null: false
    end
  end
end
