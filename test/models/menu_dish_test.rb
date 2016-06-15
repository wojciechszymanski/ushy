# == Schema Information
#
# Table name: menu_dishes
#
#  id         :integer          not null, primary key
#  menu_id    :integer
#  course_id  :integer
#  dish_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class MenuDishTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
