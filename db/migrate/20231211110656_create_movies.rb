class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.string :released
      t.string :runtime
      t.string :genre
      t.string :director
      t.string :actors
      t.string :plot
      t.string :language
      t.string :country
      t.string :poster
      t.float :rating
      t.string :type
      t.string :production

      t.timestamps
    end
  end
end
