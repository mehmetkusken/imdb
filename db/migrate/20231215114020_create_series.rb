class CreateSeries < ActiveRecord::Migration[6.1]
  def change
    create_table :series do |t|
      t.string :title
      t.string :description
      t.string :image
      t.string :genre
      t.float :rating
      t.integer :year

      t.timestamps
    end
  end
end
