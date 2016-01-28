class Bookmark < ActiveRecord::Base
  has_many :saved_bookmarks
  has_many :lists, through: :saved_bookmarks
  has_many :creators, through: :lists, class_name: "User"
end
