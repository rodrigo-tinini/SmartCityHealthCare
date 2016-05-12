json.array!(@equipment) do |equipment|
  json.extract! equipment, :id, :lat, :longi, :address, :type, :classOf
  json.url equipment_url(equipment, format: :json)
end
