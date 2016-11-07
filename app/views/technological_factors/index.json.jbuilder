json.array!(@technological_factors) do |technological_factor|
  json.extract! technological_factor, :id, :factor, :opportunity
  json.url technological_factor_url(technological_factor, format: :json)
end
