json.array!(@comments) do |comment|
  json.extract! comment, :id, :user_name, :body, :hotel_id
  json.url comment_url(comment, format: :json)
end
