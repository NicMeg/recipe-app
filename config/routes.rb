Rails.application.routes.draw do
  root to: "recipes#index"
  resources :recipes
  devise_for :users
  get '/my_recipes', to: 'recipes#my_recipes'
  get '/search', to: 'recipes#search', as: 'search_recipes'
  # get '/search' => 'recipes#search', :as => 'search_recipes'
end
