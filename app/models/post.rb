class Post < ActiveRecord::Base
	belongs_to :thread_for_post
	belongs_to :user

	validate :text, presence: true
end
