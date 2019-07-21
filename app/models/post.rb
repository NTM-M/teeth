class Post < ApplicationRecord

	belongs_to :user
	belongs_to :category

	has_many :bookmarks, dependent: :destroy
	has_many :comments

	attachment :image
end
