class User < ActiveRecord::Base
	has_secure_password
	has_one :signature
	has_many :posts

	validate :username, :uniqueness => :true, presence: true 
	validate :first_name, presence: true
	validate :last_name, presence: true
	validate :email, presence: true, format: /@/
end
