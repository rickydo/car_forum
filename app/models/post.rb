class Post < ActiveRecord::Base
	belongs_to :thread_for_post
	belongs_to :user

	validate :text, presence: true

	after_create :update_post_count

	include Update
end
