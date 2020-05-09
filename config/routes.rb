Rails.application.routes.draw do
  root to: "recipes#index"
  resources :recipes
  devise_for :users
  resources :users
  get '/my_recipes', to: 'recipes#my_recipes'
  get '/search', to: 'recipes#search', as: 'search_recipes'
end
