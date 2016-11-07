json.array!(@other_opportunities) do |other_opportunity|
  json.extract! other_opportunity, :id, :opportunity
  json.url other_opportunity_url(other_opportunity, format: :json)
end
