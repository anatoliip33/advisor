json.array!(@hotels) do |hotel|
  json.extract! hotel, :id, :title, :description, :photo
  json.url hotel_url(hotel, format: :json)
end
