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

class Customer < ActiveRecord::Base

	has_many :events

	validates :first_name, presence: true, length: { minimum: 2 }
	validates :last_name, presence:true, length: {minimum: 2}

	validates :email, presence:true, uniqueness: true

	def address
		output = "-"
		output = address1 if !address1.blank?
		output += ", <br />" + address2 if !address2.blank?
		output += ", <br />" + county if !county.blank?
		output += "<br />" + city if !city.blank?
		output += ", " + postcode if !postcode.blank?
		return output.html_safe
	end

	def contact

		output = "<address>"
		output += "<abbr title='Email'>E: </abbr><a href='mailto:#{email}'>#{email}</a><br>"
		output += "<abbr title='Phone'>P: </abbr> #{phone.empty? ? '-' : phone} <br>"
		output += "<abbr title='Mobile'>M: </abbr> #{mobile.empty? ? '-' : mobile} <br>"
		output += "</address>"
		return output.html_safe
	end

	def name

		output = first_name + " " + last_name
		return output
	end

end
