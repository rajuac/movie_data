class CreateFavouriteMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :favourite_movies do |t|
      t.text :movie_data
      t.timestamps
    end
  end
end
