json.array!(@units) do |unit|
  json.extract! unit, :id, :short, :long
  json.url unit_url(unit, format: :json)
end
