class AddYtubeToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :Ytube, :string
  end
end
