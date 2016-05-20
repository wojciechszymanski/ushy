json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :product_id, :dish_id, :qty, :special_instructions
  json.url ingredient_url(ingredient, format: :json)
end
