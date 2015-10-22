json.array!(@sows) do |sow|
  json.extract! sow, :id
  json.url sow_url(sow, format: :json)
end
