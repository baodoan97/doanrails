class User < ApplicationRecord
	#associates
	

	#validates
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true,
						length: {maximum: 105},
						uniqueness: true,
						format: {with: VALID_EMAIL_REGEX}
	has_secure_password
	validates :firstname, length: {minimum: 2}, presence:true
	validates :lastname, length: {minimum: 2}, presence: true
end