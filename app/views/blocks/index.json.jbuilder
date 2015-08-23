json.array!(@blocks) do |block|
  json.extract! block, :id, :title, :body
  json.url block_url(block, format: :json)
end
