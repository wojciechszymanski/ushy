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
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
