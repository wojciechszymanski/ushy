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

class Supplier < ActiveRecord::Base
	has_one :contact, dependent: :destroy

	accepts_nested_attributes_for :contact
end
