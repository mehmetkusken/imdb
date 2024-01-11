class FavoriteItemsController < ApplicationController

  def index
    @favorites = current_user.favorite_items
  end

  def show
    @favorite = FavoriteItem.find(params[:id])
  end

  def create
    movie = Movie.find(params[:movie_id])
    user = current_user
    @favorite = FavoriteItem.create(movie:movie , user: user)
    if @favorite.save
      redirect_to movies_path , notice: 'Movie has been favorited'
    end
  end

  def destroy
    @favorite = FavoriteItem.find(params[:id])
    if @favorite.destroy
      redirect_to favorite_items_path
    end

  end

    private

end
