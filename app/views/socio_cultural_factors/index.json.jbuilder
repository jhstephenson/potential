json.array!(@socio_cultural_factors) do |socio_cultural_factor|
  json.extract! socio_cultural_factor, :id, :factor, :opportunity
  json.url socio_cultural_factor_url(socio_cultural_factor, format: :json)
end
