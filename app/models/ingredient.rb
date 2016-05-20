class Ingredient < ActiveRecord::Base
	belongs_to :product
	belongs_to :dish

	validates_presence_of :product_id
	validates_presence_of :qty  
end
