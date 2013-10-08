json.array!(@books) do |book|
  json.extract! book, :scaffold, :name, :borrowed_date
  json.url book_url(book, format: :json)
end
