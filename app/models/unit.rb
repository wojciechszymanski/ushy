# == Schema Information
#
# Table name: units
#
#  id         :integer          not null, primary key
#  short      :string
#  long       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Unit < ActiveRecord::Base
	validates_presence_of :short

	has_many :product

	prevent_destroy_if_any :product
end
