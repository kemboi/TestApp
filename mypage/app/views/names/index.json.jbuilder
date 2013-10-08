json.array!(@names) do |name|
  json.extract! name, :dateofmanuf
  json.url name_url(name, format: :json)
end
