json.array!(@events) do |event|
  json.extract! event, :id, :owner_id, :category_id, :date_from, :date_to, :time_from, :time_to, :weekdays, :note, :description, :photo1, :photo2, :photo3, :only_for_member
  json.url event_url(event, format: :json)
end
