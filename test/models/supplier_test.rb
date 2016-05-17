# == Schema Information
#
# Table name: suppliers
#
#  id           :integer          not null, primary key
#  company_name :string
#  address1     :string
#  address2     :string
#  city         :string
#  county       :string
#  postcode     :string
#  notes        :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class SupplierTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
