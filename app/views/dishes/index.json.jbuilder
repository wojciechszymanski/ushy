json.array!(@dishes) do |dish|
  json.extract! dish, :id, :course_id, :name, :description, :preparation_time, :cooking_time, :serves
  json.url dish_url(dish, format: :json)
end
