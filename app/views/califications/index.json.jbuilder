json.array!(@califications) do |calification|
  json.extract! calification, :id, :score, :user_id, :location_id, :message
  json.url calification_url(calification, format: :json)
end
