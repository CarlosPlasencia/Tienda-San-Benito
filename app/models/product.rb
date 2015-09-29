class Product < ActiveRecord::Base

	has_attached_file :cover, styles: {medium: "1200x720", thumb: "800x600" , mini: "400x300"}
	validates_attachment_content_type :cover , content_type: /\Aimage\/.*\Z/
   
    has_many :has_categories
	has_many :categories , through: :has_categories

	has_many :requests
	has_many :sales , through: :requests 
	
	after_create :save_categories
	after_update :update_categories

	def categories=(value)
     	@categories = value	
	end

	private

	def save_categories
		@categories.each do |category_id|
			HasCategory.create(category_id: category_id, product_id: self.id )
		end
	end

	def update_categories
		
		HasCategory.destroy_all(product_id: self.id )
		       
        @categories.each do |category_id|
			HasCategory.create(category_id: category_id, product_id: self.id )
		end 

	end


end
