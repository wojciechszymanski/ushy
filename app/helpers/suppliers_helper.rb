module SuppliersHelper
	def output_address(address, line_br)

		output = address.address1
		output += ", " + address.address2 if !address.address2
		output += line_br + address.city
		output += ", " + address.county + line_br if !address.county
		output += ", " + address.postcode
		return output
	end
end
