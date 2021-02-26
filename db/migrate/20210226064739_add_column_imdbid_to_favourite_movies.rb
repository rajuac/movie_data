class AddColumnImdbidToFavouriteMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :favourite_movies, :imdb_id, :string
  end
end
