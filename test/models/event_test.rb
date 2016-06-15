# == Schema Information
#
# Table name: events
#
#  id            :integer          not null, primary key
#  event_title   :string
#  event_date    :date
#  customer_id   :integer
#  venue         :text
#  event_details :text
#  covers        :integer          default("0"), not null
#  vegetarian    :integer          default("0"), not null
#  coeliac       :integer          default("0"), not null
#  sugar_free    :integer          default("0"), not null
#  allergies     :integer          default("0"), not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
