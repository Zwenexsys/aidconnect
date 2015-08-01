json.array!(@aid_offers) do |aid_offer|
  json.extract! aid_offer, :id, :name, :phone, :nric, :content, :location_id
  json.url aid_offer_url(aid_offer, format: :json)
end
