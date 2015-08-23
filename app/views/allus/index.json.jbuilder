json.array!(@allus) do |allu|
  json.extract! allu, :id, :title, :body
  json.url allu_url(allu, format: :json)
end
