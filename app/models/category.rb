class Category < ActiveRecord::Base
	#associates
	has_many :products

	#validate
	validates :name, length: {minimum: 3, maximum: 15}, uniqueness:true
end