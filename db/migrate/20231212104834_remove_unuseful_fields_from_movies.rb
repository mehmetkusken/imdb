class RemoveUnusefulFieldsFromMovies < ActiveRecord::Migration[6.1]
  def change
    remove_column :movies, :released, :string
    remove_column :movies, :runtime, :string
    remove_column :movies, :director, :string
    remove_column :movies, :actors, :string
    remove_column :movies, :language, :string
    remove_column :movies, :country, :string
    remove_column :movies, :type, :string
    remove_column :movies, :production, :string
  end
end
