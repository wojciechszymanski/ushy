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

require 'test_helper'

class DishTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
