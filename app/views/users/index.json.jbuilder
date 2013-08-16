json.array!(@users) do |user|
  json.extract! user, :name, :email, :password_digest, :admin, :location_id
  json.url user_url(user, format: :json)
end
