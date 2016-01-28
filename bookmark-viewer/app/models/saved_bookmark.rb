class SavedBookmark < ActiveRecord::Base
  belongs_to :list
  belongs_to :bookmark
end
