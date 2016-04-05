json.array!(@comments) do |comment|
  json.extract! comment, :id, :user_id, :location_id, :message
  json.url comment_url(comment, format: :json)
end
