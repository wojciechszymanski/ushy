# == Schema Information
#
# Table name: dishes
#
#  id               :integer          not null, primary key
#  course_id        :integer
#  name             :string
#  description      :text
#  preparation_time :string
#  cooking_time     :string
#  serves           :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Dish < ActiveRecord::Base
	belongs_to :course
	has_many :ingredients, :dependent => :delete_all 

	has_many :menu_dishes
  	has_many :menus, through: :menu_dishes

	validates_presence_of :name
	validates_presence_of :serves
	validates_presence_of :course_id

	before_save :tileize_name

	amoeba do
		enable
	end

	def tileize_name
	  self.name = self.name.titleize
	end
	
end
