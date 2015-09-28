json.array!(@billings) do |billing|
  json.extract! billing, :id, :date_from, :date_to, :hours, :project_id
  json.url billing_url(billing, format: :json)
end
