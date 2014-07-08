json.array!(@categories) do |category|
  json.extract! category, :id, :model, :sub_model, :description, :image
  json.url category_url(category, format: :json)
end
