json.array!(@consultants) do |consultant|
  json.extract! consultant, :id, :first_name, :last_name, :sei_loc_id
  json.url consultant_url(consultant, format: :json)
end
