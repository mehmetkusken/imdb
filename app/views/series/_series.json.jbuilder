json.extract! series, :id, :title, :description, :image, :genre, :rating, :year, :created_at, :updated_at
json.url series_url(series, format: :json)
