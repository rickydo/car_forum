class Category < ActiveRecord::Base
	has_many :threads
end
