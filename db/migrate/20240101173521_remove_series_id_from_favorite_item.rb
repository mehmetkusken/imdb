class RemoveSeriesIdFromFavoriteItem < ActiveRecord::Migration[6.1]
  def change
    remove_column :favorite_items, :series_id, :integer
  end
end
