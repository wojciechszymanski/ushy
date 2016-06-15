# == Schema Information
#
# Table name: ingredients
#
#  id                   :integer          not null, primary key
#  product_id           :integer
#  dish_id              :integer
#  qty                  :float
#  special_instructions :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class Ingredient < ActiveRecord::Base
	belongs_to :product
	belongs_to :dish

	validates_presence_of :product_id
	validates_presence_of :qty  
end
