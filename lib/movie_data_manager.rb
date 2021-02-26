# frozen_string_literal: true

require 'httparty'

class MovieDataManager
  def latest_movies
    response = HTTParty.get('http://omdbapi.com/?s=2020&y=2020&apikey=beb23e0a&i')
    response['Search']
  end

  def details(id)
    response = HTTParty.get("http://omdbapi.com/?i=#{id}&y=2020&apikey=beb23e0a&i")
  end

  def add_favourite(id)
    response = HTTParty.get("http://omdbapi.com/?i=#{id}&y=2020&apikey=beb23e0a&i")
    FavouriteMovie.create(movie_data: response.to_hash)
  end

  def get_movies(search)
      response = HTTParty.get("http://omdbapi.com/?s=#{search}&apikey=beb23e0a&i")
      response['Search']
  end
end
