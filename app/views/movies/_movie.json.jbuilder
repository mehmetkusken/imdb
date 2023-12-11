json.extract! movie, :id, :title, :year, :released, :runtime, :genre, :director, :actors, :plot, :language, :country, :poster, :rating, :type, :production, :created_at, :updated_at
json.url movie_url(movie, format: :json)
