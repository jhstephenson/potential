json.array!(@strengths) do |strength|
  json.extract! strength, :id, :strength
  json.url strength_url(strength, format: :json)
end
