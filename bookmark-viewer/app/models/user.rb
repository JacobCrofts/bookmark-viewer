class User < ActiveRecord::Base
  has_many :lists, foreign_key: :creator_id
  has_many :saved_bookmarks, through: :lists
  has_many :bookmarks, through: :saved_bookmarks

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
end
