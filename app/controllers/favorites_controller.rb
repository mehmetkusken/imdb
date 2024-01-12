class FavoritesController < ApplicationController

    def index
        @favorites = current_user.favorites
    end

    def show
        @favorite = Favorite.find(params[:id])
    end

    def create
        series = Series.find(params[:series_id])
        user = current_user
        @favorite = Favorite.create(series:series , user: user)
        if @favorite.save
          redirect_to series_index_path , notice: 'Series has been favorited'
        end
    end

    def destroy
        @favorite = Favorite.find(params[:id])
        if @favorite.destroy
          redirect_to favorites_path
        end
    
      end
end
