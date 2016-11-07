json.array!(@strength_opportunities) do |strength_opportunity|
  json.extract! strength_opportunity, :id, :opportunity
  json.url strength_opportunity_url(strength_opportunity, format: :json)
end
