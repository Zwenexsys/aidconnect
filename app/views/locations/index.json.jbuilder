json.array!(@locations) do |location|
  json.extract! location, :id, :state, :township, :status, :description, :lat, :lon, :demographic
  json.url location_url(location, format: :json)
end
