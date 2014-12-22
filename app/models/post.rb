class Post < ActiveRecord::Base
	belongs_to :thread_for_post
	belongs_to :user

	validate :text, presence: true

	after_create :update_post_count
	# include UpdateRecords
	def update_post_count
		current_user.number_of_posts += 1
	end
end
