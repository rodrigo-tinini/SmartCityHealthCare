json.array!(@health_facilities) do |health_facility|
  json.extract! health_facility, :id, :lat, :longi, :address, :typeOf, :classOf
  json.url health_facility_url(health_facility, format: :json)
end
