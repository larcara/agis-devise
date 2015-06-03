json.array!(@owners) do |owner|
  json.extract! owner, :id, :nome, :note, :address, :cap, :municipality, :province, :lat, :lon, :level, :signed_since
  json.url owner_url(owner, format: :json)
end
