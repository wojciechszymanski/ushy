# == Schema Information
#
# Table name: courses
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  priority   :integer          default("0")
#

class Course < ActiveRecord::Base
	validates_presence_of :name

	has_many :dishes

	default_scope { order('priority DESC') }

	prevent_destroy_if_any :dish

 	before_save :tileize_name

 	def tileize_name
	  self.name = self.name.titleize
	end

end
