json.extract! book, :id, :isbn, :title, :desc, :page_number, :release_year, :image_url, :author_id, :category_id, :created_at, :updated_at
json.url book_url(book, format: :json)
