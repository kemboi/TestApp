json.array!(@vitabus) do |vitabus|
  json.extract! vitabus, :Name, :title, :dateborrowed
  json.url vitabus_url(vitabus, format: :json)
end
