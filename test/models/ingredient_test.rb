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

require 'test_helper'

class IngredientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
