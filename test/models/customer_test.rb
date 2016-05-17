# == Schema Information
#
# Table name: customers
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  address1   :string
#  address2   :string
#  city       :string
#  county     :string
#  postcode   :string
#  notes      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  phone      :string
#  mobile     :string
#  email      :string
#

require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
