class Post < ActiveRecord::Base
	belongs_to :thread
	belongs_to :user

	validate :text, presence: true
end
