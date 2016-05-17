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

	validates :first_name, presence: true, length: { minimum: 2 }
	validates :last_name, presence:true, length: {minimum: 2}

	validates :email, presence:true, uniqueness: true

	def address
		output = address1
		output += ", <br />" + address2 if !address2.empty?
		output += ", <br />" + county if !county.empty?
		output += "<br />" + city
		output += ", " + postcode
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

end
