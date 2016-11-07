json.array!(@top_fives) do |top_fife|
  json.extract! top_fife, :id, :opportunity
  json.url top_fife_url(top_fife, format: :json)
end
