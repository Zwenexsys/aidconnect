json.array!(@aid_requests) do |aid_request|
  json.extract! aid_request, :id, :name, :phone, :nric, :content, :location_id
end
