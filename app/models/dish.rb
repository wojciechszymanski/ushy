class Dish < ActiveRecord::Base
	belongs_to :course
	has_many :ingredients, :dependent => :delete_all 

	has_many :menu_dishes
  	has_many :menus, through: :menu_dishes

	validates_presence_of :name
	validates_presence_of :serves
	validates_presence_of :course_id

	before_save :tileize_name

	def tileize_name
	  self.name = self.name.titleize
	end
	
end
