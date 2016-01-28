class List < ActiveRecord::Base
  has_many :saved_bookmarks
  has_many :bookmarks, through: :saved_bookmarks
  belongs_to :creator, class_name: "User"
end
