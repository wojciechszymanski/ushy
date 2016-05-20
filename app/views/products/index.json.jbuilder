json.array!(@products) do |product|
  json.extract! product, :id, :product_category_id, :name, :unit_id, :qty_in_stock, :qty_allocated, :low_stock_qty, :re_order_qty, :indicative_selling
  json.url product_url(product, format: :json)
end
