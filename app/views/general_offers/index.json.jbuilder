json.array!(@general_offers) do |general_offer|
  json.extract! general_offer, :id, :name, :phone, :nric, :content
  json.url general_offer_url(general_offer, format: :json)
end
