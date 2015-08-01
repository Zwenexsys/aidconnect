json.array!(@shelters) do |shelter|
  json.extract! shelter, :id, :name, :phone, :description, :location_id
  json.url shelter_url(shelter, format: :json)
end
