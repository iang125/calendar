json.array!(@questions) do |question|
  json.extract! question, :atending, :event_id
  json.url question_url(question, format: :json)
end
