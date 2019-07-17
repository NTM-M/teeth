class Post < ApplicationRecord
	has_many :bookmarks
	attachment :image
end
