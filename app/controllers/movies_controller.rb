
class MoviesController < ApplicationController
    def index
        @movies = @@movie.latest_movies
    end

    def show 
      @movie = @@movie.details(params[:id])
    end

    def 
end
