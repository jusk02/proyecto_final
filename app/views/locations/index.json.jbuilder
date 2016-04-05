json.array!(@locations) do |location|
  json.extract! location, :id, :city, :name, :address, :description, :type, :avg_score, :phone, :photos
  json.url location_url(location, format: :json)
end
