class Product < ApplicationRecord
	#associate
	belongs_to :category

	#validates
	validates :name, presence: true, uniqueness: true, length: {maximum: 40}
	validate :description, length: {10..100}
	enum size: {
		36: 0,
		37: 1,
		38: 2,
		39: 3,
		40: 4,
		41: 5,
		42: 6,
		43: 7
	}
end