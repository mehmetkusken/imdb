class FavoriteItemsController < ApplicationController

  

  def create
    movie = Movie.find(params[:movie_id])
    user = current_user
    @favorite = FavoriteItem.create(movie:movie , user: user )
  end

    private

end
