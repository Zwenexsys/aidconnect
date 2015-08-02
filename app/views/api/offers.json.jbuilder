json.array!(@offers) do |aid_offer|
  json.extract! aid_offer, :id, :name, :phone, :nric, :content, :location_id
end
