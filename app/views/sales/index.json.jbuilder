json.array!(@sales) do |sale|
  json.extract! sale, :id, :total, :fecha, :user_id
  json.url sale_url(sale, format: :json)
end
