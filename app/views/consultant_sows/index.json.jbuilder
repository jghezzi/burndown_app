json.array!(@consultant_sows) do |consultant_sow|
  json.extract! consultant_sow, :id, :consultant_id, :sow_id
  json.url consultant_sow_url(consultant_sow, format: :json)
end
