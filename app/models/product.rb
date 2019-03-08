class Product < ActiveRecord::Base
	#associate
	belongs_to :category, optional: true
	has_many_attached :images

	#validates
	validates :name, presence: true, uniqueness: true, length: {maximum: 40}
	validates :description, length: {maximum: 100}
	validates :category_id, presence: true
end