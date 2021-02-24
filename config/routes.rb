Rails.application.routes.draw do
  get 'movies/index' => 'movies#index'
  get 'movies/show' => 'movies#show'

  get 'movies/favourites_add' => 'movies#favour_add'

  #resource :movies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
