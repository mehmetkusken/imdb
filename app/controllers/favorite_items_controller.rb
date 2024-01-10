class FavoriteItemsController < ApplicationController

  def index
    @favorites = current_user.favorite_items
  end

  def create
    movie = Movie.find(params[:movie_id])
    user = current_user
    @favorite = FavoriteItem.create(movie:movie , user: user)
    if @favorite.save
      redirect_to movies_path , notice: 'Movie has been favorited'
    end
    
  end

    private

end
