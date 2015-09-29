class Category < ActiveRecord::Base
	
	validates :nombre, presence: true

	has_many :has_categories
	has_many :products , through: :has_categories
end
