json.array!(@members) do |member|
  json.extract! member, :id, :card_number, :first_name, :last_name, :fiscal_code, :address, :zones_of_interest, :preferred_owners, :preferred_categories, :subcribed_events
  json.url member_url(member, format: :json)
end
