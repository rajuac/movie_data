Rails.application.routes.draw do
  get 'movies/index' => 'movies#index'
  get 'movies/show' => 'movies#show'

  get 'movies/favourites_add' => 'movies#favourites_add'
  get 'movies/search_movies' => 'movies#search_movies'
  get 'movies/list_favourites' => 'movies#list_favourites'

  #resource :movies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
