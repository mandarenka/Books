json.array!(@books) do |book|
  json.extract! book, :id, :title, :author_id, :description
  json.url book_url(book, format: :json)
end
