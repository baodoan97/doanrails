class User < ActiveRecord::Base
	#associates
	

	#validates
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true,
						length: {maximum: 105},
						uniqueness: true,
						format: {with: VALID_EMAIL_REGEX}
	validates :firstname, length: {minimum: 2}, presence:true
	validates :lastname, length: {minimum: 2}, presence: true
	has_secure_password
end