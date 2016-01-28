class User < ActiveRecord::Base
  has_many :lists, foreign_key: :creator_id
  has_many :bookmarks
end
