# frozen_string_literal: true

require 'httparty'

class MovieDataManager
  def latest_movies
    query = { 's' => '2020', 'type' => 'movie', 'apikey' => 'beb23e0a', 'y' => '2020' }
    data = response(query)
    data['Search']
  end

  def details(id)
    query = { 'i' => id.to_s, 'type' => 'movie', 'apikey' => 'beb23e0a', 'y' => '2020' }
    response(query)
  end

  def add_favourite(id)
    query = { 'i' => id.to_s, 'type' => 'movie', 'apikey' => 'beb23e0a', 'y' => '2020' }
    data = response(query)
    FavouriteMovie.create(movie_data: data.to_hash, imdb_id: id)
  end

  def get_movies(search)
    query = { 's' => search.to_s, 'type' => 'movie', 'apikey' => 'beb23e0a' }
    data = response(query)
    data['Search']
  end

  private

  def response(query)
    HTTParty.get('http://omdbapi.com/', query: query)
  end
end
