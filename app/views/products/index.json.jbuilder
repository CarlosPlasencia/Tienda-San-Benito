json.array!(@products) do |product|
  json.extract! product, :id, :nombre, :descripcion, :pre_venta, :pre_comra, :tamaño, :marca, :stock, :stock_min
  json.url product_url(product, format: :json)
end
