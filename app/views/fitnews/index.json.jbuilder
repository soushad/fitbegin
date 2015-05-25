json.array!(@fitnews) do |fitnews|
  json.extract! fitnews, :id, :title, :content, :is_public
  json.url fitnews_url(fitnews, format: :json)
end
