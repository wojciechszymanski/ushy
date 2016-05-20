class Menu < ActiveRecord::Base

	has_many :menu_dishes
  	has_many :dishes, through: :menu_dishes

	validates_presence_of :name
	
	before_save :tileize_name

	def tileize_name
	  self.name = self.name.titleize
	end

end
