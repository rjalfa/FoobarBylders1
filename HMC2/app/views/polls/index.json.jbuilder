json.array!(@polls) do |poll|
  json.extract! poll, :id, :title, :user_id
  json.url poll_url(poll, format: :json)
end
