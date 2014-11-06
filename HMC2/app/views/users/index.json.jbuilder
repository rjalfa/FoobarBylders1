json.array!(@users) do |user|
  json.extract! user, :id, :user_id, :uname
  json.url user_url(user, format: :json)
end
