# == Schema Information
#
# Table name: products
#
#  id                  :integer          not null, primary key
#  product_category_id :integer
#  name                :string
#  unit_id             :integer
#  qty_in_stock        :integer          default("0")
#  qty_allocated       :integer          default("0")
#  low_stock_qty       :integer          default("0")
#  re_order_qty        :integer          default("0")
#  indicative_selling  :integer          default("0")
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  manage_stock        :integer          default("0")
#

class Product < ActiveRecord::Base

	enum manage_stock: [ :yes, :no ]

	belongs_to :product_category
	belongs_to :unit
	has_many :ingredient

	default_scope { order('products.name') }

	prevent_destroy_if_any :ingredient

	validates_presence_of :name 
	validates_presence_of :qty_in_stock 
	validates_presence_of :unit_id 
	validates_presence_of :product_category_id

	before_save :tileize_name

	def tileize_name
	  self.name = self.name.titleize
	end
end
