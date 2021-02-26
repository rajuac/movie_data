# frozen_string_literal: true

class MoviesController < ApplicationController
  def home; end

  def index
    @movies = movie.latest_movies
  end

  def show
    @movie = movie.details(params[:id])
  end

  def favourites_add
    movie.add_favourite(params[:id])
    respond_to do |format|
      format.html { redirect_to movies_index_path, success: 'Favorite movie successfully created.' }
    end
  end

  def search_movies
    @movies = params[:search].present? ? movie.get_movies(params[:search]) : []
  end

  def list_favourites
    @movies = FavouriteMovie.all
  end

  private

  def movie
    @movie = MovieDataManager.new
  end
end
