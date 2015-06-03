json.array!(@owner_photos) do |owner_photo|
  json.extract! owner_photo, :id, :owner_id, :photo
  json.url owner_photo_url(owner_photo, format: :json)
end
