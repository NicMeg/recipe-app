Rails.application.routes.draw do
  root to: 'recipes#index'
  resources :recipes
  devise_for :users
  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#edit', as: 'edit_user'
  get '/my_recipes', to: 'recipes#my_recipes'
  get '/search', to: 'recipes#search', as: 'search_recipes'
end
