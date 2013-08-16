json.array!(@events) do |event|
  json.extract! event, :name, :type_id, :discription, :end_time, :start_time, :location_id, :user_id
  json.url event_url(event, format: :json)
end
