class Product < ApplicationRecord
	#associate
	has_many_attached :images
	has_one :category

	#validates
	# validates :name, presence: true
	validate :description
	enum size: {
		"36": 0,
		"37": 1,
		"38": 2,
		"39": 3,
		"40": 4,
		"41": 5,
		"42": 6,
		"43": 7
	}
	
end