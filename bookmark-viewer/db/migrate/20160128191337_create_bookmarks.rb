class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :name
      t.text :url

      t.timestamps null: false
    end
  end
end
