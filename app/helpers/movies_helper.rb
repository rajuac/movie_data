# frozen_string_literal: true

module MoviesHelper
  def link_add_favourites(id)
    favourite_movie = FavouriteMovie.find_by_imdb_id(id)
    data = if favourite_movie.present?
             'Added to favourites'
           else
             link_to ' Add to favorites', movies_favourites_add_path(id: id), {}
           end
    data.html_safe
  end
end
