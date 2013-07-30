json.array!(@properties) do |property|
  json.extract! property, :title, :city, :amount, :image, :description
  json.url property_url(property, format: :json)
end
