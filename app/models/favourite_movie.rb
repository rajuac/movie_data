# frozen_string_literal: true

class FavouriteMovie < ApplicationRecord
  serialize :movie_data, Hash
end
