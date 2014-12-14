json.array!(@impacts) do |impact|
  json.extract! impact, :id, :description
  json.url impact_url(impact, format: :json)
end
