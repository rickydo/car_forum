class ThreadForPost < ActiveRecord::Base
	has_many :posts
	belongs_to :category

	validates :subject, presence: true
	validates :text, presence: true 

	after_create :update_post_count
	include Update
end
