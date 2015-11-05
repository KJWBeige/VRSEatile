class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :genre
      t.integer :year
      t.string :description
      t.integer :subscription_id

      t.timestamps null: false
    end
  end
end
