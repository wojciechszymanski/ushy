json.array!(@customers) do |customer|
  json.extract! customer, :id, :first_name, :last_name, :address1, :address2, :city, :county, :postcode, :notes
  json.url customer_url(customer, format: :json)
end
