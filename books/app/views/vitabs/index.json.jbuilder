json.array!(@vitabs) do |vitab|
  json.extract! vitab, :Name, :, :title, :, :dateborrowed, :
  json.url vitab_url(vitab, format: :json)
end
