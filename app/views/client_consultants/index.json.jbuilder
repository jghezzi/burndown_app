json.array!(@client_consultants) do |client_consultant|
  json.extract! client_consultant, :id, :client_id, :consultant
  json.url client_consultant_url(client_consultant, format: :json)
end
