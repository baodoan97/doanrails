class Admin < ApplicationRecord
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true,
						length: {maximum: 105}
						uniqueness: true,
						format: {with: VALID_EMAIL_REGEX}
	has_secure_password
end