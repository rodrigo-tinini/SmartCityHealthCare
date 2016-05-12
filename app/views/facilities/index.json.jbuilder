json.array!(@facilities) do |facility|
  json.extract! facility, :id, :lat, :longi, :address, :type, :classOf
  json.url facility_url(facility, format: :json)
end
