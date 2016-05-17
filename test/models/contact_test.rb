# == Schema Information
#
# Table name: contacts
#
#  id          :integer          not null, primary key
#  supplier_id :integer
#  name        :string
#  phone       :string
#  mobile      :string
#  email       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
