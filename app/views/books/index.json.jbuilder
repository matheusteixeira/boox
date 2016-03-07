json.array!(@books) do |book|
  json.extract! book, :id, :name, :author, :pages
  json.url book_url(book, format: :json)
end
