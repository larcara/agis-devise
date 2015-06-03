json.array!(@feedbacks) do |feedback|
  json.extract! feedback, :id, :event_id, :user_id, :vote, :comment, :is_anonymous
  json.url feedback_url(feedback, format: :json)
end
