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

class Contact < ActiveRecord::Base
	belongs_to :supplier

	validates_presence_of :name
	validates_presence_of :email
end
