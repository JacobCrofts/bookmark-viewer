class Bookmark < ActiveRecord::Base
  has_many :saved_bookmarks
  has_many :lists, through: :saved_bookmarks
end
