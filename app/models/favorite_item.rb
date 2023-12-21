class FavoriteItem < ApplicationRecord
  belongs_to :user
  belongs_to :movie
  belongs_to :series
end
