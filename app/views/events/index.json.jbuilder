json.array!(@events) do |event|
  json.extract! event, :id, :event_title, :event_date, :customer_id, :venue, :event_details, :covers, :vegetarian, :coeliac, :sugar_free, :allergies
  json.url event_url(event, format: :json)
end
