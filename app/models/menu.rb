# == Schema Information
#
# Table name: menus
#
#  id         :integer          not null, primary key
#  name       :string
#  notes      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Menu < ActiveRecord::Base

	belongs_to :event
	has_many :menu_dishes
  	has_many :dishes, through: :menu_dishes

	validates_presence_of :name
	
	before_save :tileize_name

	amoeba do
		enable
	end

	def tileize_name
	  self.name = self.name.titleize
	end

	def self.standard
		where("event_id = ?", 0)
	end

end
