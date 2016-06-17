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

class Event < ActiveRecord::Base
	has_one :menu, :dependent => :delete
	belongs_to :customer

	validates_presence_of :customer_id
	validates_presence_of :event_date
	validates_presence_of :event_title 
	
	validates :covers, numericality: { only_integer: true }
	validates :vegetarian, numericality: { only_integer: true }
	validates :coeliac, numericality: { only_integer: true }
	validates :sugar_free, numericality: { only_integer: true }
	validates :allergies, numericality: { only_integer: true }

end
