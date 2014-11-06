json.array!(@blocks) do |block|
  json.extract! block, :id, :head, :description, :image, :poll_id
  json.url block_url(block, format: :json)
end
