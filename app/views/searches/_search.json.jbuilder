json.extract! search, :id, :isbn, :title, :release_year, :author, :category, :min_price, :max_price, :created_at, :updated_at
json.url search_url(search, format: :json)
