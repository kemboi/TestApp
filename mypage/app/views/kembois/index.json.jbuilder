json.array!(@kembois) do |kemboi|
  json.extract! kemboi, :name, :address
  json.url kemboi_url(kemboi, format: :json)
end
