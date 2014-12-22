class Category < ActiveRecord::Base
	has_many :thread_for_posts
end
