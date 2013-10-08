json.array!(@bookborrowings) do |bookborrowing|
  json.extract! bookborrowing, :name, :, :title, :, :author, :, :date_publish, :
  json.url bookborrowing_url(bookborrowing, format: :json)
end
