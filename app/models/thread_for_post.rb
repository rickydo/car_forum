class ThreadForPost < ActiveRecord::Base
	has_many :posts
	belongs_to :category
	belongs_to :user

	validates :subject, presence: true
	validates :text, presence: true 

	after_create :update_post_count
	# include UpdateRecords
	def update_post_count
		current_user.number_of_posts += 1
	end

	def get_username
		self.user.username
	end

	def time_format
		self.created_at.strftime("%I:%M%p on %m/%d/%Y")
	end
end
