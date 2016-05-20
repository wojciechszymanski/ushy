# == Schema Information
#
# Table name: product_categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ProductCategory < ActiveRecord::Base
	validates_presence_of :name

	default_scope { order('name') }

	has_many :products

	prevent_destroy_if_any :product

 	before_save :tileize_name

 	def tileize_name
	  self.name = self.name.titleize
	end
end
